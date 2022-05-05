import 'package:beginner/pages/food/popular_food_detail.dart';
import 'package:beginner/pages/food/recommended_food_detail.dart';
import 'package:beginner/pages/home/main_food_page.dart';
import 'package:get/get.dart';

class RouteHelper {
  static const String initial = '/';
  static const String popularFoodDetail = '/popular-food';
  static const String recommendedFoodDetail = '/recommended-food-detail';

  static String getInitial() => initial;
  static String getPopularFoodDetail() => popularFoodDetail;
  static String getRecommendedFoodDetail() => recommendedFoodDetail;

  static List<GetPage> routes = [
    GetPage(
      name: initial,
      page: () => const MainFoodPage(),
      transition: Transition.leftToRight,
    ),
    GetPage(
      name: popularFoodDetail,
      page: () => const PopularFoodDetail(),
      transition: Transition.downToUp,
    ),
    GetPage(  
      name: recommendedFoodDetail,
      page: () => const RecommendedFoodDetail(),
      transition: Transition.upToDown,
    )
  ];
}
