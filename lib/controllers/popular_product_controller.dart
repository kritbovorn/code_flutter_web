import 'package:beginner/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:beginner/data/repository/popular_product_repository.dart';

class PopularProductController extends GetxController {
  final PopularProductRepository popularProductRepository;
  PopularProductController({
    required this.popularProductRepository,
  });

  List<dynamic> _popularProductLists = [];
  List<dynamic> get popularProductLists => _popularProductLists;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepository.getPopularProductList();

    if (response.statusCode == 200) {
      debugPrint('@@@@@@ Get Product');
      _popularProductLists = [];
      _popularProductLists.addAll(Product.fromJson(response.body).products);
      debugPrint('@@@ ' + _popularProductLists.toString());
      update();
    } else {}
  }
}
