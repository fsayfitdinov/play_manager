// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RoomAdapter extends TypeAdapter<Room> {
  @override
  final int typeId = 2;

  @override
  Room read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Room();
  }

  @override
  void write(BinaryWriter writer, Room obj) {
    writer..writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RoomAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as String?,
      branchId: json['branchId'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      position: json['position'] as String?,
      author: json['author'] as String?,
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'branchId': instance.branchId,
      'name': instance.name,
      'description': instance.description,
      'position': instance.position,
      'author': instance.author,
    };
