import 'package:flutter/material.dart';

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
        primarySwatch: Colors.purple,
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Colors.purple,
            side: const BorderSide(color: Colors.orange, width: 2),
            shape:
                BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
            shadowColor: Colors.pink,
            elevation: 10,
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextButton(
              child: const Text('Submit'),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: const Icon(Icons.shopping_cart),
              label: const Text('Shopping Cart'),
              onPressed: () {},
            ),
            TextButton.icon(
              icon: const Icon(Icons.shopping_cart),
              label: const Text('Shopping Cart'),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.purple,
                side: const BorderSide(color: Colors.orange, width: 2),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                shadowColor: Colors.pink,
                elevation: 10,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
