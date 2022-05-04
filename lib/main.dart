import 'package:beginner/controllers/popular_product_controller.dart';
import 'package:beginner/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helper/dependencies.dart' as dependency;

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // เช็คว่า ได้ข้อมูลมา จริงหรือเปล่า

  await dependency.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = "Food Delivery";

  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainFoodPage(),
      // home: const PopularFoodDetail(),
      // home: const MainFoodPage(),
    );
  }
}
