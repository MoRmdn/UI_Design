import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:new_project/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  void measureNumber() {
    double x = 42662;
    double y = 0;

    for (var i = 0; i < x; i++) {
      y = x * 0.10;
      x = x - y;
      log("$x + $y  + $i");
      if (x <= 1) {
        return;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    measureNumber();
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0xff0091BE),
            secondary: Colors.white,
          ),
        ),
        home: const Profile());
  }
}
