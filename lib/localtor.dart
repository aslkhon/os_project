import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:os_project/services/camera.service.dart';
import 'package:os_project/services/db_service.dart';
import 'package:os_project/services/face_detector_service.dart';

import 'services/ml_service.dart';

final locator = GetIt.instance;

void configureDependencies() {
  locator.registerLazySingleton(() => Dio());
  locator.registerLazySingleton(() => DBService());
  locator.registerLazySingleton(() => CameraService());
  locator.registerLazySingleton(() => FaceDetectorService(locator()));
  locator.registerLazySingleton(() => MLService());
}
