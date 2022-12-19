import 'package:freezed_annotation/freezed_annotation.dart';

part 'professor.freezed.dart';
part 'professor.g.dart';

@freezed
class Professor with _$Professor {
  factory Professor({
    required String id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    required String password,
  }) = _Professor;

  factory Professor.fromJson(Map<String, dynamic> json) =>
      _$ProfessorFromJson(json);
}
