import 'package:base_app/home.dart';
import 'package:flutter/material.dart';
import 'package:login_micro_app/login_micro_app.dart';
import 'package:micro_core/core/base_app.dart';
import 'package:micro_core/core/micro_app.dart';
import 'package:micro_core/core/micro_core_utils.dart';

void main() {
  runApp(MyApp());
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
}
