// https://www.youtube.com/watch?v=CSa6Ocyog4U&list=PLzOt3noWLMthJKm8SJl2zmUlJiZp7fzo7&index=2

import 'package:beginner/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Flutter Travel UI";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 13, 179, 204),
        scaffoldBackgroundColor: const Color(0xfff3f5f7),
        colorScheme: ThemeData()
            .colorScheme
            .copyWith(secondary: const Color.fromARGB(255, 102, 184, 205)),
      ),
      home: const HomeScreen(),
    );
  }
}
