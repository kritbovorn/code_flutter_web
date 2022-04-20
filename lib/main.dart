// https://www.youtube.com/watch?v=feQhHStBVLE&list=PLzOt3noWLMthJKm8SJl2zmUlJiZp7fzo7&index=4

import 'package:flutter/material.dart';

  void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Flutter";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: HomePage(title: "Flutter"),
    );
  }
}

class HomePage extends StatefulWidget {

  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
        title: Text(widget.title),
      ),
      body: Container(),
    );
  }
}