import 'package:freezed_annotation/freezed_annotation.dart';

part 'department.freezed.dart';
part 'department.g.dart';

@freezed
class Department with _$Department {
  factory Department({
    required int id,
    @JsonKey(name: 'dept_name') required String departmentName,
    required String university,
  }) = _Department;

  factory Department.fromJson(Map<String, dynamic> json) =>
      _$DepartmentFromJson(json);
}

// Department {
//     id: int,
//     dept_name, university: string
// }