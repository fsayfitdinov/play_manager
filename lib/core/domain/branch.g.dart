// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BranchAdapter extends TypeAdapter<Branch> {
  @override
  final int typeId = 1;

  @override
  Branch read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Branch();
  }

  @override
  void write(BinaryWriter writer, Branch obj) {
    writer..writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BranchAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Branch _$$_BranchFromJson(Map<String, dynamic> json) => _$_Branch(
      id: json['id'] as int?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_BranchToJson(_$_Branch instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'description': instance.description,
    };
