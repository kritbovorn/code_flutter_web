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
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            primary: Colors.white,
            backgroundColor: const Color.fromARGB(255, 47, 150, 0),
            shadowColor: Colors.orange,
            elevation: 5,
            side: const BorderSide(
                color: Color.fromARGB(255, 110, 84, 147), width: 4),
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
