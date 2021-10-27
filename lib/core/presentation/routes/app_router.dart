import 'package:auto_route/auto_route.dart';
import 'package:play_manager/scanner/presentation/home_page.dart';

import '../../../auth/presentation/sign_in_page.dart';
import '../../../splash/presentation/splash_page.dart';

@CupertinoAutoRouter(
  routes: [
    CupertinoRoute(
      page: SplashPage,
      initial: true,
    ),
    CupertinoRoute(
      page: SignInPage,
      path: '/auth',
    ),
    CupertinoRoute(
      page: HomePage,
      path: '/home',
    ),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
