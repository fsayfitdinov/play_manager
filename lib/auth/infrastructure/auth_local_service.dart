import 'package:hive/hive.dart';

import 'package:play_manager/core/domain/user_model.dart';
import 'package:play_manager/core/infrastructure/hive_datastore.dart';

class AuthLocalService {
  AuthLocalService();

  final box = Hive.box<UserModel>(HiveDataStore.userBox);

  UserModel? setUser() {
    return box.get('user');
  }

  Future<void> addUser({
    required UserModel user,
  }) async {
    await box.put('user', user);
  }

  Future<void> removeUser() async {
    await box.delete('user');
  }
}
