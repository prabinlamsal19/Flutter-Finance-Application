part of 'routes_imports.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SignupPageRoute.page, path: "/", initial: true),
    AutoRoute(page: HomePageRoute.page, path: "/home", children: [
      AutoRoute(
          page: TransactionPageRoute.page,
          path: 'transactions',
          children: [
            AutoRoute(page: NotesScreenRoute.page, path: 'notes', children: [
              AutoRoute(page: NoteScreenRoute.page, path: 'notescreen')
            ]),
          ]),
      AutoRoute(page: PieChartScreenRoute.page, path: 'statistics'),
      AutoRoute(page: StocksPageRoute.page, path: 'stocks'),
      AutoRoute(page: BlogPageRoute.page, path: 'blogs'),
      AutoRoute(page: ProfilePageRoute.page, path: 'profile')
    ]), // (/home)
    AutoRoute(page: LoginPageRoute.page, path: "/login", children: [
      AutoRoute(page: RestBlogPageRoute.page, path: 'graphql'),
      // AutoRoute(page: PersonalBlogPageRoute.page, path: 'personal')
    ]),
  ];
}
