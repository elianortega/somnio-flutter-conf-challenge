// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeScreenRoute,
    ];

RouteBase get $homeScreenRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'challenge-1',
          factory: $Challenge1RouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'challenge-2',
          factory: $Challenge2RouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'challenge-3',
          factory: $Challenge3RouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'challenge-5',
          factory: $Challenge5RouteExtension._fromState,
        ),
      ],
    );

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) => HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Challenge1RouteExtension on Challenge1Route {
  static Challenge1Route _fromState(GoRouterState state) => Challenge1Route();

  String get location => GoRouteData.$location(
        '/challenge-1',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Challenge2RouteExtension on Challenge2Route {
  static Challenge2Route _fromState(GoRouterState state) => Challenge2Route();

  String get location => GoRouteData.$location(
        '/challenge-2',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Challenge3RouteExtension on Challenge3Route {
  static Challenge3Route _fromState(GoRouterState state) => Challenge3Route();

  String get location => GoRouteData.$location(
        '/challenge-3',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $Challenge5RouteExtension on Challenge5Route {
  static Challenge5Route _fromState(GoRouterState state) => Challenge5Route();

  String get location => GoRouteData.$location(
        '/challenge-5',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
