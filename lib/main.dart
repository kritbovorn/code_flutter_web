// https://www.youtube.com/watch?app=desktop&v=svQOxQde0bg

import 'package:beginner/screens/home_screen.dart';
import 'package:beginner/theme/google_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Flutter";

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: GoogleTheme.lightTheme,
      darkTheme: GoogleTheme.darkTheme,
      // home: const VideoInfo(),
      home: const HomeScreen(),
    );
  }
}
