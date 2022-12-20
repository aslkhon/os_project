import 'package:hive_flutter/hive_flutter.dart';
import 'package:os_project/models/student_record.dart';

class DBService {
  static const boxName = "students";

  late final Box<StudentRecord> _box;

  Future<void> initialize() async {
    Hive.registerAdapter(StudentRecordAdapter());
    _box = await Hive.openBox(boxName);
  }

  void clearAllBox() async {
    await _box.clear();
  }

  List<StudentRecord> get students => _box.values.toList();

  void addStudentRecord(StudentRecord record) => _box.add(record);
}
