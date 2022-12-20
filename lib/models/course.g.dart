// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Course _$$_CourseFromJson(Map<String, dynamic> json) => _$_Course(
      id: json['id'] as String,
      name: json['name'] as String,
      credits: json['credits'] as int,
      departmentId: json['dept_id'] as int,
      professorId: json['professor_id'] as String,
    );

Map<String, dynamic> _$$_CourseToJson(_$_Course instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'credits': instance.credits,
      'dept_id': instance.departmentId,
      'professor_id': instance.professorId,
    };
