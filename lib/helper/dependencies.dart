import 'package:beginner/controllers/popular_product_controller.dart';
import 'package:beginner/data/api/api_client.dart';
import 'package:beginner/data/repository/popular_product_repository.dart';
import 'package:get/get.dart';

Future<void> init() async {
  //  ApiClient
  Get.lazyPut(() => ApiClient(appBaseUrl: 'https://mvs.bslmeiyu.com'));
  //  Repository
  Get.lazyPut(() => PopularProductRepository(apiClient: Get.find()));
  //  Controller
  Get.lazyPut(() => PopularProductController(popularProductRepository: Get.find()));
}