import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
@HiveType(typeId: 0)
class UserModel with _$UserModel {
  const factory UserModel({
    @HiveField(0) int? id,
    @HiveField(1) int? branchId,
    @HiveField(2) int? roomId,
    @HiveField(3) String? name,
    @HiveField(4) String? phone,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
