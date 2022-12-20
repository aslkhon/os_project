import 'package:hive_flutter/hive_flutter.dart';

part 'student_record.g.dart';

@HiveType(typeId: 0)
class StudentRecord extends HiveObject {
  @HiveField(0)
  final String id;

  @HiveField(1)
  List modelData;

  StudentRecord(this.id, this.modelData);
}
