// Flutter imports:
import 'package:boilerplate/screens/home_screen.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:

import 'app_routes.dart';

class AppRouter extends GoRouter {
  AppRouter()
      : super(
          routes: _routes,
          initialLocation: AppRoutes.homeScreen,
        );

  static final _routes = [
    GoRoute(
      path: AppRoutes.homeScreen,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
    ),
  ];

  void goToHomeScreen() => go(AppRoutes.homeScreen);
}

extension AppRouterExt on BuildContext {
  AppRouter get router => GoRouter.of(this) as AppRouter;
}
