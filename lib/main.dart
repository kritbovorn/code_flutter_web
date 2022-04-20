// https://www.youtube.com/watch?v=feQhHStBVLE&list=PLzOt3noWLMthJKm8SJl2zmUlJiZp7fzo7&index=4

import 'package:beginner/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Flutter YouTube API";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primaryColor: Colors.red,
        primarySwatch: Colors.red,
      ),
      home: const HomeScreen(),
    );
  }
}
