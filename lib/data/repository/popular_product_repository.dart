
import 'package:beginner/utils/app_constant.dart';
import 'package:get/get.dart';

import 'package:beginner/data/api/api_client.dart';

class PopularProductRepository extends GetxService {
  final ApiClient apiClient;
  PopularProductRepository({
    required this.apiClient,
  });

  Future<Response> getPopularProductList() async {
    return await apiClient.getData(AppConstant.popularProductUri);
  }
}


// 'http://mvs.bslmeiyu.com/api/v1/products/popular'