import 'package:base_app/home.dart';
import 'package:flutter/material.dart';
import 'package:login_micro_app/login_micro_app.dart';
import 'package:micro_core/micro_core.dart';
import 'package:micro_core/utils/app_locator.dart';

void main() {
  final myapp = MyApp();
  myapp.configureDependencies();
  runApp(myapp);
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    super.registerRouters();

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

  void configureDependencies() {
    final locator = AppLocator();
    MicroCoreDependencies.setUp(locator);
    LoginMicroAppDependencies.setUp(locator);
  }
}
