import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizi_game/routes.dart';
import 'screens/screen_1.dart';

void main() {
  runApp(const MyaApp());
}

class MyaApp extends StatelessWidget {
  const MyaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Screen1(),
      routes: routess,
    );
  }
}
