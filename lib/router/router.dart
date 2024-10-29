import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:somnio_flutter_conf_challenge/challenge_1/challenge_1.dart';
import 'package:somnio_flutter_conf_challenge/challenge_2/challenge_2.dart';
import 'package:somnio_flutter_conf_challenge/challenge_3/challenge_3.dart';
import 'package:somnio_flutter_conf_challenge/challenge_4/challenge_4.dart';
import 'package:somnio_flutter_conf_challenge/challenge_5/challenge_5.dart';
import 'package:somnio_flutter_conf_challenge/challenge_6/challenge_6.dart';
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
    TypedGoRoute<Challenge3Route>(
      path: 'challenge-3',
    ),
    TypedGoRoute<Challenge4Route>(
      path: 'challenge-4',
    ),
    TypedGoRoute<Challenge5Route>(
      path: 'challenge-5',
    ),
    TypedGoRoute<Challenge6Route>(
      path: 'challenge-6',
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

@immutable
class Challenge3Route extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Challenge3Page();
  }
}

@immutable
class Challenge4Route extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Challenge4Page();
  }
}

@immutable
class Challenge5Route extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Challenge5Page();
  }
}

@immutable
class Challenge6Route extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Challenge6Page();
  }
}
