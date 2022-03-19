import 'package:hive_flutter/hive_flutter.dart';

import 'package:play_manager/core/domain/user_model.dart';

class HiveDataStore {
  static const userBox = 'userBox';

  Future<void> init() async {
    // init Hive
    await Hive.initFlutter();
    // register adapters
    Hive.registerAdapter<UserModel>(UserModelAdapter());
    // open boxes
    await Hive.openBox<UserModel>(userBox);
  }
}
