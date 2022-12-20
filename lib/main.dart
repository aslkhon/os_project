import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:os_project/app.dart';
import 'package:os_project/localtor.dart';
import 'package:os_project/services/db_service.dart';

void main() async {
  configureDependencies();
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await (locator<DBService>()).initialize();

  runApp(const TheApp());
}
