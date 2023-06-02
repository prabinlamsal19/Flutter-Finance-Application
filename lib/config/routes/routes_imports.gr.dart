// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;
import 'package:personal_finance/add_task/presentation/pages/home_page.dart'
    as _i13;
import 'package:personal_finance/add_transaction/presentation/pages/homepage.dart'
    as _i6;
import 'package:personal_finance/add_transaction/presentation/pages/transaction_page.dart'
    as _i7;
import 'package:personal_finance/blogs/presentation/pages/blog_page.dart'
    as _i3;
import 'package:personal_finance/blogs/presentation/pages/graphql_blog/rest_blog.dart'
    as _i4;
import 'package:personal_finance/blogs/presentation/pages/personal_blog/personal_blogs.dart'
    as _i2;
import 'package:personal_finance/login/presentation/pages/login_page.dart'
    as _i12;
import 'package:personal_finance/notes/data/models/note_model.dart' as _i16;
import 'package:personal_finance/notes/presentation/pages/note_screen.dart'
    as _i10;
import 'package:personal_finance/notes/presentation/pages/notes_screen.dart'
    as _i9;
import 'package:personal_finance/profile/presentation/pages/profile_page.dart'
    as _i11;
import 'package:personal_finance/signup/presentation/pages/signup_page.dart'
    as _i8;
import 'package:personal_finance/statistics/presentation/pages/Statistics.dart'
    as _i1;
import 'package:personal_finance/stock_rest/presentation/pages/stock_page.dart'
    as _i5;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    PieChartScreenRoute.name: (routeData) {
      final args = routeData.argsAs<PieChartScreenRouteArgs>(
          orElse: () => const PieChartScreenRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.PieChartScreen(key: args.key),
      );
    },
    PersonalBlogPageRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PersonalBlogPage(),
      );
    },
    BlogPageRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.BlogPage(),
      );
    },
    RestBlogPageRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RestBlogPage(),
      );
    },
    StocksPageRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.StocksPage(),
      );
    },
    HomePageRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.HomePage(),
      );
    },
    TransactionPageRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.TransactionPage(),
      );
    },
    SignupPageRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SignupPage(),
      );
    },
    NotesScreenRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotesScreen(),
      );
    },
    NoteScreenRoute.name: (routeData) {
      final args = routeData.argsAs<NoteScreenRouteArgs>(
          orElse: () => const NoteScreenRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.NoteScreen(
          key: args.key,
          note: args.note,
        ),
      );
    },
    ProfilePageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfilePageRouteArgs>(
          orElse: () => const ProfilePageRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.ProfilePage(key: args.key),
      );
    },
    LoginPageRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.LoginPage(),
      );
    },
    MyHomePageRoute.name: (routeData) {
      final args = routeData.argsAs<MyHomePageRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.MyHomePage(
          key: args.key,
          taskBubbleList: args.taskBubbleList,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.PieChartScreen]
class PieChartScreenRoute extends _i14.PageRouteInfo<PieChartScreenRouteArgs> {
  PieChartScreenRoute({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          PieChartScreenRoute.name,
          args: PieChartScreenRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'PieChartScreenRoute';

  static const _i14.PageInfo<PieChartScreenRouteArgs> page =
      _i14.PageInfo<PieChartScreenRouteArgs>(name);
}

class PieChartScreenRouteArgs {
  const PieChartScreenRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'PieChartScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.PersonalBlogPage]
class PersonalBlogPageRoute extends _i14.PageRouteInfo<void> {
  const PersonalBlogPageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          PersonalBlogPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'PersonalBlogPageRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.BlogPage]
class BlogPageRoute extends _i14.PageRouteInfo<void> {
  const BlogPageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          BlogPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'BlogPageRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RestBlogPage]
class RestBlogPageRoute extends _i14.PageRouteInfo<void> {
  const RestBlogPageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          RestBlogPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'RestBlogPageRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i5.StocksPage]
class StocksPageRoute extends _i14.PageRouteInfo<void> {
  const StocksPageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          StocksPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'StocksPageRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i6.HomePage]
class HomePageRoute extends _i14.PageRouteInfo<void> {
  const HomePageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          HomePageRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomePageRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.TransactionPage]
class TransactionPageRoute extends _i14.PageRouteInfo<void> {
  const TransactionPageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          TransactionPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'TransactionPageRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SignupPage]
class SignupPageRoute extends _i14.PageRouteInfo<void> {
  const SignupPageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          SignupPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupPageRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.NotesScreen]
class NotesScreenRoute extends _i14.PageRouteInfo<void> {
  const NotesScreenRoute({List<_i14.PageRouteInfo>? children})
      : super(
          NotesScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotesScreenRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.NoteScreen]
class NoteScreenRoute extends _i14.PageRouteInfo<NoteScreenRouteArgs> {
  NoteScreenRoute({
    _i15.Key? key,
    _i16.Note? note,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          NoteScreenRoute.name,
          args: NoteScreenRouteArgs(
            key: key,
            note: note,
          ),
          initialChildren: children,
        );

  static const String name = 'NoteScreenRoute';

  static const _i14.PageInfo<NoteScreenRouteArgs> page =
      _i14.PageInfo<NoteScreenRouteArgs>(name);
}

class NoteScreenRouteArgs {
  const NoteScreenRouteArgs({
    this.key,
    this.note,
  });

  final _i15.Key? key;

  final _i16.Note? note;

  @override
  String toString() {
    return 'NoteScreenRouteArgs{key: $key, note: $note}';
  }
}

/// generated route for
/// [_i11.ProfilePage]
class ProfilePageRoute extends _i14.PageRouteInfo<ProfilePageRouteArgs> {
  ProfilePageRoute({
    _i15.Key? key,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          ProfilePageRoute.name,
          args: ProfilePageRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'ProfilePageRoute';

  static const _i14.PageInfo<ProfilePageRouteArgs> page =
      _i14.PageInfo<ProfilePageRouteArgs>(name);
}

class ProfilePageRouteArgs {
  const ProfilePageRouteArgs({this.key});

  final _i15.Key? key;

  @override
  String toString() {
    return 'ProfilePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i12.LoginPage]
class LoginPageRoute extends _i14.PageRouteInfo<void> {
  const LoginPageRoute({List<_i14.PageRouteInfo>? children})
      : super(
          LoginPageRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginPageRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.MyHomePage]
class MyHomePageRoute extends _i14.PageRouteInfo<MyHomePageRouteArgs> {
  MyHomePageRoute({
    _i15.Key? key,
    required List<dynamic> taskBubbleList,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          MyHomePageRoute.name,
          args: MyHomePageRouteArgs(
            key: key,
            taskBubbleList: taskBubbleList,
          ),
          initialChildren: children,
        );

  static const String name = 'MyHomePageRoute';

  static const _i14.PageInfo<MyHomePageRouteArgs> page =
      _i14.PageInfo<MyHomePageRouteArgs>(name);
}

class MyHomePageRouteArgs {
  const MyHomePageRouteArgs({
    this.key,
    required this.taskBubbleList,
  });

  final _i15.Key? key;

  final List<dynamic> taskBubbleList;

  @override
  String toString() {
    return 'MyHomePageRouteArgs{key: $key, taskBubbleList: $taskBubbleList}';
  }
}
