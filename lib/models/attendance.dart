import 'package:freezed_annotation/freezed_annotation.dart';

part 'attendance.freezed.dart';
part 'attendance.g.dart';

@freezed
class Attendance with _$Attendance {
  factory Attendance({
    required int id,
    required DateTime date,
    @JsonKey(name: 'course_id') required String courseId,
    @JsonKey(name: 'student_id') required String studentId,
    @JsonKey(name: 'professor_id') required String professorId,
    @JsonKey(name: 'time_slot_id') required int timeSlotId,
  }) = _Attendance;

  factory Attendance.fromJson(Map<String, dynamic> json) =>
      _$AttendanceFromJson(json);
}
