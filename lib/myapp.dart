import 'package:base_app/home.dart';
import 'package:flutter/material.dart';
import 'package:login_micro_app/app/login_micro_app_dependencies.dart';
import 'package:login_micro_app/app/login_micro_app_resolver.dart';
import 'package:micro_core/micro_core.dart';

class MyApp extends StatelessWidget with BaseApp {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      home: const HomePage(),
      onGenerateRoute: super.generateRoute,
      initialRoute: '/home',
    );
  }

  @override
  Map<String, WidgetBuilderArgs>? get baseRoutes => {
        '/home': (context, args) => const HomePage(),
      };

  @override
  List<MicroApp>? get microApps => [
        LoginMicroAppResolver(),
      ];

  void init() {
    super.registerRouters();
    configureDependencies();
  }

  void configureDependencies() {
    MicroCoreDependencies.setUp(locator);
    LoginMicroAppDependencies.setUp(locator);
  }

  void isAppMocked(bool isMocked) {
    isMockedTurnedOn = isMocked;
  }
}
