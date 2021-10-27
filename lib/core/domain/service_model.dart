import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'service_model.freezed.dart';
part 'service_model.g.dart';

@freezed
@HiveType(typeId: 3)
class ServiceModel with _$ServiceModel {
  const ServiceModel._();
  const factory ServiceModel({
    @HiveField(0) String? id,
    @HiveField(1) String? branchId,
    @HiveField(2) String? name,
    @HiveField(3) String? price,
    @HiveField(4) String? delta,
    @HiveField(5) String? position,
    @HiveField(6) String? description,
    @HiveField(7) String? author,
    @HiveField(8) String? date,
    @HiveField(9) String? isActive,
  }) = _ServiceModel;

  factory ServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ServiceModelFromJson(json);
}
