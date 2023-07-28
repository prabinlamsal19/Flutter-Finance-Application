// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;
import 'package:personal_finance/app/splash_page.dart' as _i1;
import 'package:personal_finance/features/add_task/presentation/pages/home_page.dart'
    as _i14;
import 'package:personal_finance/features/add_transaction/presentation/pages/homepage.dart'
    as _i7;
import 'package:personal_finance/features/add_transaction/presentation/pages/transaction_page.dart'
    as _i8;
import 'package:personal_finance/features/blogs/presentation/pages/blog_page.dart'
    as _i4;
import 'package:personal_finance/features/blogs/presentation/pages/graphql_blog/rest_blog.dart'
    as _i5;
import 'package:personal_finance/features/blogs/presentation/pages/personal_blog/personal_blogs.dart'
    as _i3;
import 'package:personal_finance/features/login/presentation/pages/login_page.dart'
    as _i13;
import 'package:personal_finance/features/notes/data/models/note_model.dart'
    as _i17;
import 'package:personal_finance/features/notes/presentation/pages/note_screen.dart'
    as _i11;
import 'package:personal_finance/features/notes/presentation/pages/notes_screen.dart'
    as _i10;
import 'package:personal_finance/features/profile/presentation/pages/profile_page.dart'
    as _i12;
import 'package:personal_finance/features/signup/presentation/pages/signup_page.dart'
    as _i9;
import 'package:personal_finance/features/statistics/presentation/pages/Statistics.dart'
    as _i2;
import 'package:personal_finance/features/stock_rest/presentation/pages/stock_page.dart'
    as _i6;

abstract class $AppRouter extends _i15.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    PieChartScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PieChartScreenRouteArgs>(
          orElse: () => const PieChartScreenRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.PieChartScreen(key: args.key),
      );
    },
    PersonalBlogPageRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PersonalBlogPage(),
      );
    },
    BlogPageRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.BlogPage(),
      );
    },
    RestBlogPageRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RestBlogPage(),
      );
    },
    StocksPageRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.StocksPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomePage(),
      );
    },
    TransactionPageRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.TransactionPage(),
      );
    },
    SignupPageRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SignupPage(),
      );
    },
    NotesScreenRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.NotesScreen(),
      );
    },
    NoteScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NoteScreenRouteArgs>(
          orElse: () => const NoteScreenRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.NoteScreen(
          key: args.key,
          note: args.note,
        ),
      );
    },
    ProfilePageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfilePageRouteArgs>(
          orElse: () => const ProfilePageRouteArgs());
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.ProfilePage(key: args.key),
      );
    },
    LoginPageRoute.name: (routeData) {
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.LoginPage(),
      );
    },
    MyHomePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomePageRouteArgs>();
      return _i15.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.MyHomePage(
          key: args.key,
          taskBubbleList: args.taskBubbleList,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i15.PageRouteInfo<void> {
  const SplashPageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SplashPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashPageRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PieChartScreen]
class PieChartScreenRoute extends _i15.PageRouteInfo<PieChartScreenRouteArgs> {
  PieChartScreenRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          PieChartScreenRoute.name,
          args: PieChartScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PieChartScreenRoute';

  static const _i15.PageInfo<PieChartScreenRouteArgs> page =
      _i15.PageInfo<PieChartScreenRouteArgs>(name);
}

class PieChartScreenRouteArgs {
  const PieChartScreenRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'PieChartScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.PersonalBlogPage]
class PersonalBlogPageRoute extends _i15.PageRouteInfo<void> {
  const PersonalBlogPageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          PersonalBlogPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalBlogPageRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i4.BlogPage]
class BlogPageRoute extends _i15.PageRouteInfo<void> {
  const BlogPageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          BlogPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlogPageRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RestBlogPage]
class RestBlogPageRoute extends _i15.PageRouteInfo<void> {
  const RestBlogPageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          RestBlogPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'RestBlogPageRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i6.StocksPage]
class StocksPageRoute extends _i15.PageRouteInfo<void> {
  const StocksPageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          StocksPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StocksPageRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomePage]
class HomePageRoute extends _i15.PageRouteInfo<void> {
  const HomePageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i8.TransactionPage]
class TransactionPageRoute extends _i15.PageRouteInfo<void> {
  const TransactionPageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          TransactionPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionPageRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SignupPage]
class SignupPageRoute extends _i15.PageRouteInfo<void> {
  const SignupPageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          SignupPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupPageRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i10.NotesScreen]
class NotesScreenRoute extends _i15.PageRouteInfo<void> {
  const NotesScreenRoute({List<_i15.PageRouteInfo>? children})
      : super(
          NotesScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotesScreenRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i11.NoteScreen]
class NoteScreenRoute extends _i15.PageRouteInfo<NoteScreenRouteArgs> {
  NoteScreenRoute({
    _i16.Key? key,
    _i17.Note? note,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          NoteScreenRoute.name,
          args: NoteScreenRouteArgs(
            key: key,
            note: note,
          ),
          initialChildren: children,
        );

  static const String name = 'NoteScreenRoute';

  static const _i15.PageInfo<NoteScreenRouteArgs> page =
      _i15.PageInfo<NoteScreenRouteArgs>(name);
}

class NoteScreenRouteArgs {
  const NoteScreenRouteArgs({
    this.key,
    this.note,
  });

  final _i16.Key? key;

  final _i17.Note? note;

  @override
  String toString() {
    return 'NoteScreenRouteArgs{key: $key, note: $note}';
  }
}

/// generated route for
/// [_i12.ProfilePage]
class ProfilePageRoute extends _i15.PageRouteInfo<ProfilePageRouteArgs> {
  ProfilePageRoute({
    _i16.Key? key,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          ProfilePageRoute.name,
          args: ProfilePageRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfilePageRoute';

  static const _i15.PageInfo<ProfilePageRouteArgs> page =
      _i15.PageInfo<ProfilePageRouteArgs>(name);
}

class ProfilePageRouteArgs {
  const ProfilePageRouteArgs({this.key});

  final _i16.Key? key;

  @override
  String toString() {
    return 'ProfilePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i13.LoginPage]
class LoginPageRoute extends _i15.PageRouteInfo<void> {
  const LoginPageRoute({List<_i15.PageRouteInfo>? children})
      : super(
          LoginPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPageRoute';

  static const _i15.PageInfo<void> page = _i15.PageInfo<void>(name);
}

/// generated route for
/// [_i14.MyHomePage]
class MyHomePageRoute extends _i15.PageRouteInfo<MyHomePageRouteArgs> {
  MyHomePageRoute({
    _i16.Key? key,
    required List<dynamic> taskBubbleList,
    List<_i15.PageRouteInfo>? children,
  }) : super(
          MyHomePageRoute.name,
          args: MyHomePageRouteArgs(
            key: key,
            taskBubbleList: taskBubbleList,
          ),
          initialChildren: children,
        );

  static const String name = 'MyHomePageRoute';

  static const _i15.PageInfo<MyHomePageRouteArgs> page =
      _i15.PageInfo<MyHomePageRouteArgs>(name);
}

class MyHomePageRouteArgs {
  const MyHomePageRouteArgs({
    this.key,
    required this.taskBubbleList,
  });

  final _i16.Key? key;

  final List<dynamic> taskBubbleList;

  @override
  String toString() {
    return 'MyHomePageRouteArgs{key: $key, taskBubbleList: $taskBubbleList}';
  }
}
