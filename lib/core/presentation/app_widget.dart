import 'package:flutter/material.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:play_manager/auth/application/auth_notifier.dart';

import 'package:play_manager/auth/shared/providers.dart';
import 'package:play_manager/core/presentation/constants.dart';
import 'package:play_manager/core/shared/providers.dart';
import 'package:play_manager/core/presentation/routes/app_router.gr.dart';

class AppWidget extends ConsumerWidget {
  AppWidget({Key? key}) : super(key: key);
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(
      authNotifierProvider,
      (state) {
        state.maybeMap(
          authenticated: (_) => appRouter.pushAndPopUntil(
            const HomeRoute(),
            predicate: (route) => false,
          ),
          unAuthenticated: (_) => appRouter.pushAndPopUntil(
            const SignInRoute(),
            predicate: (route) => false,
          ),
          // failure: (failure) => Fluttertoast.showToast(
          //   msg: failure.failure.maybeMap(
          //     server: (err) => '${err.message}',
          //     noConnection: (_) => 'Нет подключения к Интернету',
          //     orElse: () => '',
          //   ),
          //   toastLength: Toast.LENGTH_SHORT,
          //   gravity: ToastGravity.CENTER,
          //   backgroundColor: Colors.red,
          //   textColor: Colors.white,
          //   fontSize: 16.0,
          // ),
          orElse: () {},
        );
      },
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: appRouter.defaultRouteParser(),
      routerDelegate: appRouter.delegate(
        navigatorObservers: () => [
          ref.read(analyticsServiceProvider).getAnalyticsObserver(),
        ],
      ),
      title: 'Play Manager',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: kMainColor,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
