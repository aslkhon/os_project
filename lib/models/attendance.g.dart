// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attendance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Attendance _$$_AttendanceFromJson(Map<String, dynamic> json) =>
    _$_Attendance(
      id: json['id'] as int,
      date: DateTime.parse(json['date'] as String),
      courseId: json['course_id'] as String,
      studentId: json['student_id'] as String,
      professorId: json['professor_id'] as String,
      timeSlotId: json['time_slot_id'] as int,
    );

Map<String, dynamic> _$$_AttendanceToJson(_$_Attendance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date.toIso8601String(),
      'course_id': instance.courseId,
      'student_id': instance.studentId,
      'professor_id': instance.professorId,
      'time_slot_id': instance.timeSlotId,
    };
