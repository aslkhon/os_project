// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'department.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Department _$DepartmentFromJson(Map<String, dynamic> json) {
  return _Department.fromJson(json);
}

/// @nodoc
mixin _$Department {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'dept_name')
  String get departmentName => throw _privateConstructorUsedError;
  String get university => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DepartmentCopyWith<Department> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DepartmentCopyWith<$Res> {
  factory $DepartmentCopyWith(
          Department value, $Res Function(Department) then) =
      _$DepartmentCopyWithImpl<$Res, Department>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'dept_name') String departmentName,
      String university});
}

/// @nodoc
class _$DepartmentCopyWithImpl<$Res, $Val extends Department>
    implements $DepartmentCopyWith<$Res> {
  _$DepartmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? departmentName = null,
    Object? university = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      departmentName: null == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DepartmentCopyWith<$Res>
    implements $DepartmentCopyWith<$Res> {
  factory _$$_DepartmentCopyWith(
          _$_Department value, $Res Function(_$_Department) then) =
      __$$_DepartmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'dept_name') String departmentName,
      String university});
}

/// @nodoc
class __$$_DepartmentCopyWithImpl<$Res>
    extends _$DepartmentCopyWithImpl<$Res, _$_Department>
    implements _$$_DepartmentCopyWith<$Res> {
  __$$_DepartmentCopyWithImpl(
      _$_Department _value, $Res Function(_$_Department) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? departmentName = null,
    Object? university = null,
  }) {
    return _then(_$_Department(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      departmentName: null == departmentName
          ? _value.departmentName
          : departmentName // ignore: cast_nullable_to_non_nullable
              as String,
      university: null == university
          ? _value.university
          : university // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Department implements _Department {
  _$_Department(
      {required this.id,
      @JsonKey(name: 'dept_name') required this.departmentName,
      required this.university});

  factory _$_Department.fromJson(Map<String, dynamic> json) =>
      _$$_DepartmentFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'dept_name')
  final String departmentName;
  @override
  final String university;

  @override
  String toString() {
    return 'Department(id: $id, departmentName: $departmentName, university: $university)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Department &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.departmentName, departmentName) ||
                other.departmentName == departmentName) &&
            (identical(other.university, university) ||
                other.university == university));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, departmentName, university);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DepartmentCopyWith<_$_Department> get copyWith =>
      __$$_DepartmentCopyWithImpl<_$_Department>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DepartmentToJson(
      this,
    );
  }
}

abstract class _Department implements Department {
  factory _Department(
      {required final int id,
      @JsonKey(name: 'dept_name') required final String departmentName,
      required final String university}) = _$_Department;

  factory _Department.fromJson(Map<String, dynamic> json) =
      _$_Department.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'dept_name')
  String get departmentName;
  @override
  String get university;
  @override
  @JsonKey(ignore: true)
  _$$_DepartmentCopyWith<_$_Department> get copyWith =>
      throw _privateConstructorUsedError;
}
