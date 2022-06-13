// https://www.youtube.com/watch?v=XBKzpTz65Io

import 'package:beginner/constants.dart';
import 'package:beginner/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Flutter";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(0, 0),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
            side: const BorderSide(width: 1, color: kTextLightColor),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            primary: kTextColor,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
