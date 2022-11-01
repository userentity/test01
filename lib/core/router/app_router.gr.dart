// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../presentation/auth/auth_page.dart' as _i1;
import '../../presentation/error/error_page.dart' as _i3;
import '../../presentation/success/success_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.AuthPage(),
      );
    },
    SuccessRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SuccessPage(),
      );
    },
    ErrorRoute.name: (routeData) {
      final args = routeData.argsAs<ErrorRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ErrorPage(
          key: args.key,
          error: args.error,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'auth',
          fullMatch: true,
        ),
        _i4.RouteConfig(
          AuthRoute.name,
          path: 'auth',
        ),
        _i4.RouteConfig(
          SuccessRoute.name,
          path: 'success',
        ),
        _i4.RouteConfig(
          ErrorRoute.name,
          path: 'error',
        ),
      ];
}

/// generated route for
/// [_i1.AuthPage]
class AuthRoute extends _i4.PageRouteInfo<void> {
  const AuthRoute()
      : super(
          AuthRoute.name,
          path: 'auth',
        );

  static const String name = 'AuthRoute';
}

/// generated route for
/// [_i2.SuccessPage]
class SuccessRoute extends _i4.PageRouteInfo<void> {
  const SuccessRoute()
      : super(
          SuccessRoute.name,
          path: 'success',
        );

  static const String name = 'SuccessRoute';
}

/// generated route for
/// [_i3.ErrorPage]
class ErrorRoute extends _i4.PageRouteInfo<ErrorRouteArgs> {
  ErrorRoute({
    _i5.Key? key,
    required String error,
  }) : super(
          ErrorRoute.name,
          path: 'error',
          args: ErrorRouteArgs(
            key: key,
            error: error,
          ),
        );

  static const String name = 'ErrorRoute';
}

class ErrorRouteArgs {
  const ErrorRouteArgs({
    this.key,
    required this.error,
  });

  final _i5.Key? key;

  final String error;

  @override
  String toString() {
    return 'ErrorRouteArgs{key: $key, error: $error}';
  }
}
