// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_record.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StudentRecordAdapter extends TypeAdapter<StudentRecord> {
  @override
  final int typeId = 0;

  @override
  StudentRecord read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return StudentRecord(
      fields[0] as String,
      (fields[1] as List).cast<dynamic>(),
    );
  }

  @override
  void write(BinaryWriter writer, StudentRecord obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.modelData);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StudentRecordAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
