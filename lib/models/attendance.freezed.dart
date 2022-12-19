// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'attendance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Attendance _$AttendanceFromJson(Map<String, dynamic> json) {
  return _Attendance.fromJson(json);
}

/// @nodoc
mixin _$Attendance {
  int get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  String get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'student_id')
  String get studentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'professor_id')
  String get professorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_slot_id')
  int get timeSlotId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttendanceCopyWith<Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttendanceCopyWith<$Res> {
  factory $AttendanceCopyWith(
          Attendance value, $Res Function(Attendance) then) =
      _$AttendanceCopyWithImpl<$Res, Attendance>;
  @useResult
  $Res call(
      {int id,
      DateTime date,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'student_id') String studentId,
      @JsonKey(name: 'professor_id') String professorId,
      @JsonKey(name: 'time_slot_id') int timeSlotId});
}

/// @nodoc
class _$AttendanceCopyWithImpl<$Res, $Val extends Attendance>
    implements $AttendanceCopyWith<$Res> {
  _$AttendanceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? courseId = null,
    Object? studentId = null,
    Object? professorId = null,
    Object? timeSlotId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      professorId: null == professorId
          ? _value.professorId
          : professorId // ignore: cast_nullable_to_non_nullable
              as String,
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttendanceCopyWith<$Res>
    implements $AttendanceCopyWith<$Res> {
  factory _$$_AttendanceCopyWith(
          _$_Attendance value, $Res Function(_$_Attendance) then) =
      __$$_AttendanceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      DateTime date,
      @JsonKey(name: 'course_id') String courseId,
      @JsonKey(name: 'student_id') String studentId,
      @JsonKey(name: 'professor_id') String professorId,
      @JsonKey(name: 'time_slot_id') int timeSlotId});
}

/// @nodoc
class __$$_AttendanceCopyWithImpl<$Res>
    extends _$AttendanceCopyWithImpl<$Res, _$_Attendance>
    implements _$$_AttendanceCopyWith<$Res> {
  __$$_AttendanceCopyWithImpl(
      _$_Attendance _value, $Res Function(_$_Attendance) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? courseId = null,
    Object? studentId = null,
    Object? professorId = null,
    Object? timeSlotId = null,
  }) {
    return _then(_$_Attendance(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as String,
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as String,
      professorId: null == professorId
          ? _value.professorId
          : professorId // ignore: cast_nullable_to_non_nullable
              as String,
      timeSlotId: null == timeSlotId
          ? _value.timeSlotId
          : timeSlotId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Attendance implements _Attendance {
  _$_Attendance(
      {required this.id,
      required this.date,
      @JsonKey(name: 'course_id') required this.courseId,
      @JsonKey(name: 'student_id') required this.studentId,
      @JsonKey(name: 'professor_id') required this.professorId,
      @JsonKey(name: 'time_slot_id') required this.timeSlotId});

  factory _$_Attendance.fromJson(Map<String, dynamic> json) =>
      _$$_AttendanceFromJson(json);

  @override
  final int id;
  @override
  final DateTime date;
  @override
  @JsonKey(name: 'course_id')
  final String courseId;
  @override
  @JsonKey(name: 'student_id')
  final String studentId;
  @override
  @JsonKey(name: 'professor_id')
  final String professorId;
  @override
  @JsonKey(name: 'time_slot_id')
  final int timeSlotId;

  @override
  String toString() {
    return 'Attendance(id: $id, date: $date, courseId: $courseId, studentId: $studentId, professorId: $professorId, timeSlotId: $timeSlotId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attendance &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.professorId, professorId) ||
                other.professorId == professorId) &&
            (identical(other.timeSlotId, timeSlotId) ||
                other.timeSlotId == timeSlotId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, date, courseId, studentId, professorId, timeSlotId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttendanceCopyWith<_$_Attendance> get copyWith =>
      __$$_AttendanceCopyWithImpl<_$_Attendance>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttendanceToJson(
      this,
    );
  }
}

abstract class _Attendance implements Attendance {
  factory _Attendance(
          {required final int id,
          required final DateTime date,
          @JsonKey(name: 'course_id') required final String courseId,
          @JsonKey(name: 'student_id') required final String studentId,
          @JsonKey(name: 'professor_id') required final String professorId,
          @JsonKey(name: 'time_slot_id') required final int timeSlotId}) =
      _$_Attendance;

  factory _Attendance.fromJson(Map<String, dynamic> json) =
      _$_Attendance.fromJson;

  @override
  int get id;
  @override
  DateTime get date;
  @override
  @JsonKey(name: 'course_id')
  String get courseId;
  @override
  @JsonKey(name: 'student_id')
  String get studentId;
  @override
  @JsonKey(name: 'professor_id')
  String get professorId;
  @override
  @JsonKey(name: 'time_slot_id')
  int get timeSlotId;
  @override
  @JsonKey(ignore: true)
  _$$_AttendanceCopyWith<_$_Attendance> get copyWith =>
      throw _privateConstructorUsedError;
}
