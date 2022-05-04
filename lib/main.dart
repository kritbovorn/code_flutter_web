import 'package:beginner/pages/food/recommended_food_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Food Delivery";

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RecommendedFoodDetail(),
      // home: const PopularFoodDetail(),
      // home: const MainFoodPage(),
    );
  }
}
