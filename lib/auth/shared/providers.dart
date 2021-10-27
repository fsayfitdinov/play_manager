import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:play_manager/auth/application/auth_notifier.dart';
import 'package:play_manager/auth/infrastructure/auth_local_service.dart';
import 'package:play_manager/auth/infrastructure/auth_remote_service.dart';
import 'package:play_manager/auth/infrastructure/auth_repository.dart';
import 'package:play_manager/core/shared/providers.dart';

final authLocalServiceProvider = Provider(
  (ref) => AuthLocalService(),
);

final authRemoteServiceProvider = Provider(
  (ref) => AuthRemoteService(
    ref.watch(dioProvider),
    ref.watch(deviceDetailsProvider),
  ),
);

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    ref.watch(authLocalServiceProvider),
    ref.watch(authRemoteServiceProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(authRepositoryProvider),
  ),
);
