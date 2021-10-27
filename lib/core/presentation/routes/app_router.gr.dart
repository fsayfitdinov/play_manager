// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../../auth/presentation/sign_in_page.dart' as _i2;
import '../../../scanner/presentation/home_page.dart' as _i3;
import '../../../splash/presentation/splash_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SignInRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.SignInPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.HomePage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(SignInRoute.name, path: '/auth'),
        _i4.RouteConfig(HomeRoute.name, path: '/home')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.SignInPage]
class SignInRoute extends _i4.PageRouteInfo<void> {
  const SignInRoute() : super(name, path: '/auth');

  static const String name = 'SignInRoute';
}

/// generated route for [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/home');

  static const String name = 'HomeRoute';
}
