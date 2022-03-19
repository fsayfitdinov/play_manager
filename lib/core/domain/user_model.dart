import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@HiveType(typeId: 0)
class UserModel with _$UserModel {
  const factory UserModel({
    @HiveField(0) required int id,
    @HiveField(1) required int branchId,
    @JsonKey(defaultValue: 0) @HiveField(2) required int roomId,
    @JsonKey(defaultValue: '') @HiveField(3) required String name,
    @JsonKey(defaultValue: '') @HiveField(4) required String phone,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}
