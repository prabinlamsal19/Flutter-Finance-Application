part of 'routes_imports.dart';

@AutoRouterConfig(replaceInRouteName: "Route")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SignupPageRoute.page, path: "/", initial: true),
    AutoRoute(page: HomePageRoute.page, path: "/home"), // (/home)
    AutoRoute(page: LoginPageRoute.page, path: "/login"),
  ];
}
