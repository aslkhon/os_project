// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'department.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Department _$$_DepartmentFromJson(Map<String, dynamic> json) =>
    _$_Department(
      id: json['id'] as int,
      departmentName: json['dept_name'] as String,
      university: json['university'] as String,
    );

Map<String, dynamic> _$$_DepartmentToJson(_$_Department instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dept_name': instance.departmentName,
      'university': instance.university,
    };
