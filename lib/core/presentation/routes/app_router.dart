import 'package:auto_route/auto_route.dart';
import 'package:play_manager/scanner/presentation/home_page.dart';

import '../../../auth/presentation/sign_in_page.dart';
import '../../../splash/presentation/splash_page.dart';

@CupertinoAutoRouter(
  routes: [
    AutoRoute(
      page: SplashPage,
      initial: true,
    ),
    CustomRoute(
      page: SignInPage,
      path: '/auth',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    CustomRoute(
      page: HomePage,
      path: '/home',
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
