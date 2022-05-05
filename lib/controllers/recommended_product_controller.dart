import 'package:beginner/models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:beginner/data/repository/recommended_product_repository.dart';

class RecommendedProductController extends GetxController {
  final RecommendedProductRepository recommendedProductRepository;
  RecommendedProductController({
    required this.recommendedProductRepository,
  });

  List<ProductModel> _recommendedProductLists = [];
  List<ProductModel> get recommendedProductLists => _recommendedProductLists;

  bool _isLoaded = false;
  bool get isLoaded => _isLoaded;

  Future<void> getRecommendedProductList() async {
    Response response = await recommendedProductRepository.getRecommendedProductList();

    if (response.statusCode == 200) {
      debugPrint('@@@@@ Get Recommended');
      _recommendedProductLists = [];
      _recommendedProductLists.addAll(Product.fromJson(response.body).products);

      _isLoaded = true;

      update();
    } else {
      debugPrint('@@@@@ Could not get Recommended Products');
    }
  }

  
}
