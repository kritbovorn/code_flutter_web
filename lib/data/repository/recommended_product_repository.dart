import 'package:beginner/utils/app_constant.dart';
import 'package:get/get.dart';

import 'package:beginner/data/api/api_client.dart';

class RecommendedProductRepository extends GetxService {
  final ApiClient apiClient;
  RecommendedProductRepository({
    required this.apiClient,
  });

  Future<Response> getRecommendedProductList() async {
    return await apiClient.getData(AppConstant.recommendedProductUri);
  }

  
}
