import 'package:beginner/controllers/popular_product_controller.dart';
import 'package:beginner/controllers/recommended_product_controller.dart';
import 'package:beginner/data/api/api_client.dart';
import 'package:beginner/data/repository/popular_product_repository.dart';
import 'package:beginner/data/repository/recommended_product_repository.dart';
import 'package:beginner/utils/app_constant.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //  ApiClient
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstant.baseUri));
  //  Repository
  Get.lazyPut(() => PopularProductRepository(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepository(apiClient: Get.find()));
  //  Controller
  Get.lazyPut(() => PopularProductController(popularProductRepository: Get.find()));
  Get.lazyPut(() => RecommendedProductController(recommendedProductRepository: Get.find()));
}