import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:repo_rover/application/config/app_constants.dart';
import 'package:repo_rover/application/config/app_routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final GoRouter _router;

  @override
  void initState() {
    super.initState();

    /// Creates a [GoRouter] instance.
    ///
    /// Sets initial location set to '/splash',
    /// debug logging of diagnostics enabled, and navigator key set to
    /// [_rootNavigatorStateKey]. The routes are set using [AppRoutes.setupAppRoutes],
    /// with [rootNavigatorStateKey] set to [_rootNavigatorStateKey],
    _router = GoRouter(
      initialLocation: '/splash',
      debugLogDiagnostics: true,
      navigatorKey: AppConstants.rootNavigatorKey,
      routes: AppRoutes.setupAppRoutes(
        rootNavigatorKey: AppConstants.rootNavigatorKey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, Widget? child) => child!,
      child: MaterialApp.router(
        title: 'RepoRover',
        theme: ThemeData.light(
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        routeInformationProvider: _router.routeInformationProvider,
      ),
    );
  }
}