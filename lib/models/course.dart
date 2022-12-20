import 'package:freezed_annotation/freezed_annotation.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@freezed
class Course with _$Course {
  factory Course({
    required String id,
    required String name,
    required int credits,
    @JsonKey(name: 'dept_id') required int departmentId,
    @JsonKey(name: 'professor_id') required String professorId,
  }) = _Course;

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
