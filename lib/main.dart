import 'package:base_app/myapp.dart';
import 'package:flutter/material.dart';

void main() {
  final myapp = MyApp();
  myapp.isAppMocked(true);
  myapp.init();
  runApp(myapp);
}
