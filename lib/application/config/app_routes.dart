import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:repo_rover/presentation/authentication/authentication_screen.dart';

class AppRoutes {
  /// Returns a list of [RouteBase] instances that define the available routes for the app.
  ///
  /// The `rootNavigatorKey` parameter is required to provide keys
  /// for the parent navigator of each route.
  static List<RouteBase> setupAppRoutes({
    required GlobalKey<NavigatorState> rootNavigatorKey,
  }) {
    return <RouteBase>[
      GoRoute(
          path: '/authentication',
          name: 'authentication',
          parentNavigatorKey: rootNavigatorKey,
          pageBuilder: (BuildContext context, GoRouterState state) {
            return CustomTransitionPage<void>(
              transitionsBuilder: (
                BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child,
              ) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: const AuthenticationScreen(),
              key: state.pageKey,
            );
          })
    ];
  }
}