// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:personal_finance/add_task/presentation/pages/home_page.dart'
    as _i4;
import 'package:personal_finance/add_transaction/presentation/pages/homepage.dart'
    as _i1;
import 'package:personal_finance/login/presentation/pages/login_page.dart'
    as _i3;
import 'package:personal_finance/signup/presentation/pages/signup_page.dart'
    as _i2;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    SignupPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.SignupPage(),
      );
    },
    LoginPageRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    MyHomePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomePageRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.MyHomePage(
          key: args.key,
          taskBubbleList: args.taskBubbleList,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i5.PageRouteInfo<void> {
  const HomePageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.SignupPage]
class SignupPageRoute extends _i5.PageRouteInfo<void> {
  const SignupPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SignupPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginPage]
class LoginPageRoute extends _i5.PageRouteInfo<void> {
  const LoginPageRoute({List<_i5.PageRouteInfo>? children})
      : super(
          LoginPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPageRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MyHomePage]
class MyHomePageRoute extends _i5.PageRouteInfo<MyHomePageRouteArgs> {
  MyHomePageRoute({
    _i6.Key? key,
    required List<dynamic> taskBubbleList,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          MyHomePageRoute.name,
          args: MyHomePageRouteArgs(
            key: key,
            taskBubbleList: taskBubbleList,
          ),
          initialChildren: children,
        );

  static const String name = 'MyHomePageRoute';

  static const _i5.PageInfo<MyHomePageRouteArgs> page =
      _i5.PageInfo<MyHomePageRouteArgs>(name);
}

class MyHomePageRouteArgs {
  const MyHomePageRouteArgs({
    this.key,
    required this.taskBubbleList,
  });

  final _i6.Key? key;

  final List<dynamic> taskBubbleList;

  @override
  String toString() {
    return 'MyHomePageRouteArgs{key: $key, taskBubbleList: $taskBubbleList}';
  }
}
