import 'package:beginner/pages/food/popular_food_detail.dart';
import 'package:beginner/pages/food/recommended_food_detail.dart';
import 'package:beginner/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';
  static const String popularFoodDetail = '/popular-food';
  static const String recommendedFoodDetail = '/recommended-food-detail';

  static String getInitial() => initial;
  static String getPopularFoodDetail(int pageId) => '$popularFoodDetail?pageId=$pageId';
  static String getRecommendedFoodDetail(int pageId) => '$recommendedFoodDetail?pageId=$pageId';

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => const MainFoodPage(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: popularFoodDetail,
      page: () {
        var pageId = Get.parameters['pageId'];
        return PopularFoodDetail(pageId: int.parse(pageId!));
      },
      transition: Transition.downToUp,
    ),
    GetPage(  
      name: recommendedFoodDetail,
      page: () {
        var pageId = Get.parameters['pageId'];
        return RecommendedFoodDetail(pageId: int.parse(pageId!));
      },
      transition: Transition.upToDown,
    )
  ];
}
