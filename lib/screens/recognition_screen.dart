import 'dart:async';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:os_project/localtor.dart';
import 'package:os_project/models/student_record.dart';
import 'package:os_project/screens/widgets/camera_detection_preview.dart';
import 'package:os_project/screens/widgets/singe_picture.dart';
import 'package:os_project/services/camera.service.dart';
import 'package:os_project/services/face_detector_service.dart';
import 'package:os_project/services/ml_service.dart';

import 'widgets/camera_header.dart';

class RecognitionScreen extends StatefulWidget {
  const RecognitionScreen({super.key});

  @override
  State<RecognitionScreen> createState() => _RecognitionScreenState();
}

class _RecognitionScreenState extends State<RecognitionScreen> {
  final _cameraService = locator<CameraService>();
  final _faceDetectorService = locator<FaceDetectorService>();
  final _mlService = locator<MLService>();

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  bool _isPictureTaken = false;
  bool _isInitializing = false;

  @override
  void initState() {
    super.initState();
    _initServices();
  }

  @override
  void dispose() {
    _cameraService.dispose();
    _mlService.dispose();
    _faceDetectorService.dispose();
    super.dispose();
  }

  Future _initServices() async {
    setState(() => _isInitializing = true);
    await _cameraService.initialize();
    await _mlService.initialize();
    _faceDetectorService.initialize();
    setState(() => _isInitializing = false);
    _frameFaces();
  }

  void _frameFaces() async {
    bool processing = false;
    _cameraService.cameraController!
        .startImageStream((CameraImage image) async {
      if (processing) return; // prevents unnecessary overprocessing.
      processing = true;
      await _predictFacesFromImage(image: image);
      processing = false;
    });
  }

  Future<void> _predictFacesFromImage({@required CameraImage? image}) async {
    assert(image != null, 'Image is null');
    await _faceDetectorService.detectFacesFromImage(image!);
    if (_faceDetectorService.faceDetected) {
      _mlService.setCurrentPrediction(image, _faceDetectorService.faces[0]);
    }
    if (mounted) setState(() {});
  }

  Future<void> takePicture() async {
    if (_faceDetectorService.faceDetected) {
      await _cameraService.takePicture();
      setState(() => _isPictureTaken = true);
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          content: Text('No face detected!'),
        ),
      );
    }
  }

  _reload() {
    if (mounted) setState(() => _isPictureTaken = false);
    _initServices();
  }

  Future<void> onTap() async {
    await takePicture();
    if (_faceDetectorService.faceDetected) {
      StudentRecord? student = await _mlService.predict();
      var bottomSheetController = scaffoldKey.currentState!
          .showBottomSheet((context) => attendanceSheet(student: student));
      bottomSheetController.closed.whenComplete(_reload);
    }
  }

  @override
  Widget build(BuildContext context) {
    final body = () {
      if (_isInitializing) {
        return const Center(child: CircularProgressIndicator());
      }
      if (_isPictureTaken) {
        return SinglePicture(imagePath: _cameraService.imagePath!);
      }
      return CameraDetectionPreview();
    }();

    return Scaffold(
        key: scaffoldKey,
        body: Stack(
          children: [
            body,
            CameraHeader(
              'Attendance',
              onBackPressed: () => Navigator.of(context).pop(),
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: !_isPictureTaken
            ? ElevatedButton(
                onPressed: onTap,
                child: const Text('Take a picture'),
              )
            : null);
  }

  attendanceSheet({required StudentRecord? student}) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20.0),
      child: student != null
          ? const Text(
              'Student is not recognized!',
              style: TextStyle(fontSize: 20.0),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Attendance accepted!',
                  style: TextStyle(fontSize: 20.0),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(student?.id),
                  child: const Text(
                    'Go back',
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
    );
  }
}
