import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:somnio_flutter_conf_challenge/challenge_1/challenge_1_page.dart';
import 'package:somnio_flutter_conf_challenge/challenge_2/challenge_2.dart';
import 'package:somnio_flutter_conf_challenge/home/home.dart';

part 'router.g.dart';

// GoRouter configuration
final router = GoRouter(
  routes: $appRoutes,
);

@TypedGoRoute<HomeScreenRoute>(
  path: '/',
  routes: [
    TypedGoRoute<Challenge1Route>(
      path: 'challenge-1',
    ),
    TypedGoRoute<Challenge2Route>(
      path: 'challenge-2',
    ),
  ],
)
@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@immutable
class Challenge1Route extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Challenge1Page();
  }
}

@immutable
class Challenge2Route extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Challenge2Page();
  }
}
