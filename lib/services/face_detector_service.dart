import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:flutter/material.dart';
import 'package:os_project/services/camera.service.dart';

class FaceDetectorService {
  final CameraService _cameraService;

  late FaceDetector _faceDetector;

  FaceDetectorService(this._cameraService);

  FaceDetector get faceDetector => _faceDetector;

  List<Face> _faces = [];
  List<Face> get faces => _faces;
  bool get faceDetected => _faces.isNotEmpty;

  void initialize() {
    _faceDetector = GoogleMlKit.vision.faceDetector(
      FaceDetectorOptions(
        performanceMode: FaceDetectorMode.accurate,
      ),
    );
  }

  Future<void> detectFacesFromImage(CameraImage image) async {
    InputImageData firebaseImageMetadata = InputImageData(
      imageRotation:
          _cameraService.cameraRotation ?? InputImageRotation.rotation0deg,
      inputImageFormat: InputImageFormat.nv21,
      size: Size(image.width.toDouble(), image.height.toDouble()),
      planeData: image.planes.map(
        (Plane plane) {
          return InputImagePlaneMetadata(
            bytesPerRow: plane.bytesPerRow,
            height: plane.height,
            width: plane.width,
          );
        },
      ).toList(),
    );

    Uint8List bytes = Uint8List.fromList(
      image.planes.fold(
        <int>[],
        (List<int> previousValue, element) =>
            previousValue..addAll(element.bytes),
      ),
    );

    InputImage firebaseVisionImage = InputImage.fromBytes(
      bytes: bytes,
      inputImageData: firebaseImageMetadata,
    );

    _faces = await _faceDetector.processImage(firebaseVisionImage);
  }

  dispose() {
    _faceDetector.close();
  }
}
