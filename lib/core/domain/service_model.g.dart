// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ServiceModelAdapter extends TypeAdapter<ServiceModel> {
  @override
  final int typeId = 3;

  @override
  ServiceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ServiceModel();
  }

  @override
  void write(BinaryWriter writer, ServiceModel obj) {
    writer..writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServiceModel _$$_ServiceModelFromJson(Map<String, dynamic> json) =>
    _$_ServiceModel(
      id: json['id'] as String?,
      branchId: json['branchId'] as String?,
      name: json['name'] as String?,
      price: json['price'] as String?,
      delta: json['delta'] as String?,
      position: json['position'] as String?,
      description: json['description'] as String?,
      author: json['author'] as String?,
      date: json['date'] as String?,
      isActive: json['isActive'] as String?,
    );

Map<String, dynamic> _$$_ServiceModelToJson(_$_ServiceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'branchId': instance.branchId,
      'name': instance.name,
      'price': instance.price,
      'delta': instance.delta,
      'position': instance.position,
      'description': instance.description,
      'author': instance.author,
      'date': instance.date,
      'isActive': instance.isActive,
    };
