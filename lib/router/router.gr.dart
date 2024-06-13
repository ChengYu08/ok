// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:ok/pages/home/home_view.dart' as _i1;
import 'package:ok/pages/sign_in/sign_in_view.dart' as _i2;
import 'package:ok/pages/sign_up/sign_up_view.dart' as _i3;
import 'package:ok/pages/splash/splash_view.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomePage.name: (routeData) {
      final args =
          routeData.argsAs<HomePageArgs>(orElse: () => const HomePageArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(key: args.key),
      );
    },
    SignInPage.name: (routeData) {
      final args = routeData.argsAs<SignInPageArgs>(
          orElse: () => const SignInPageArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.SignInPage(key: args.key),
      );
    },
    SignUpPage.name: (routeData) {
      final args = routeData.argsAs<SignUpPageArgs>(
          orElse: () => const SignUpPageArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SignUpPage(key: args.key),
      );
    },
    SplashPage.name: (routeData) {
      final args = routeData.argsAs<SplashPageArgs>(
          orElse: () => const SplashPageArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.SplashPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomePage extends _i5.PageRouteInfo<HomePageArgs> {
  HomePage({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          HomePage.name,
          args: HomePageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomePage';

  static const _i5.PageInfo<HomePageArgs> page =
      _i5.PageInfo<HomePageArgs>(name);
}

class HomePageArgs {
  const HomePageArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'HomePageArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.SignInPage]
class SignInPage extends _i5.PageRouteInfo<SignInPageArgs> {
  SignInPage({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          SignInPage.name,
          args: SignInPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignInPage';

  static const _i5.PageInfo<SignInPageArgs> page =
      _i5.PageInfo<SignInPageArgs>(name);
}

class SignInPageArgs {
  const SignInPageArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'SignInPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SignUpPage]
class SignUpPage extends _i5.PageRouteInfo<SignUpPageArgs> {
  SignUpPage({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          SignUpPage.name,
          args: SignUpPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SignUpPage';

  static const _i5.PageInfo<SignUpPageArgs> page =
      _i5.PageInfo<SignUpPageArgs>(name);
}

class SignUpPageArgs {
  const SignUpPageArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'SignUpPageArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.SplashPage]
class SplashPage extends _i5.PageRouteInfo<SplashPageArgs> {
  SplashPage({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          SplashPage.name,
          args: SplashPageArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'SplashPage';

  static const _i5.PageInfo<SplashPageArgs> page =
      _i5.PageInfo<SplashPageArgs>(name);
}

class SplashPageArgs {
  const SplashPageArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'SplashPageArgs{key: $key}';
  }
}
