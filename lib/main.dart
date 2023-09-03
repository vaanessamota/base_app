import 'package:base_app/myapp.dart';
import 'package:flutter/material.dart';

void main() {
  final myapp = MyApp();
  myapp.configureDependencies();
  myapp.turnMocksOn();
  runApp(myapp);
}
