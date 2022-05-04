
import 'package:get/get.dart';

import 'package:beginner/data/api/api_client.dart';

class PopularProductRepository extends GetxService {
  final ApiClient apiClient;
  PopularProductRepository({
    required this.apiClient,
  });

  Future<Response> getPopularProductList() async {
    return await apiClient.getData('/api/v1/products/popular');
  }
}


// 'http://mvs.bslmeiyu.com/api/v1/products/popular'