import 'package:beginner/controllers/recommended_product_controller.dart';
import 'package:beginner/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:beginner/routes/route_helper.dart';
import 'package:beginner/utils/colors.dart';
import 'package:beginner/utils/dimensions.dart';
import 'package:beginner/widgets/app_icon.dart';
import 'package:beginner/widgets/big_text.dart';
import 'package:beginner/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  final int pageId;
  const RecommendedFoodDetail({
    Key? key,
    required this.pageId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var product = Get.find<RecommendedProductController>()
        .recommendedProductLists[pageId];
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 100, // กำหนดความสูง ให้กับ title: เวลาสไลด์
            title: Row(
              // Content  ของ AppBar
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                  icon: Icons.clear,
                  onPressed: () => Get.toNamed(RouteHelper.getInitial()),
                ),
                AppIcon(
                  icon: Icons.shopping_cart_outlined,
                  onPressed: () {},
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                  top: Dimensions.height15,
                  bottom: Dimensions.height15,
                ),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      Dimensions.height20,
                    ),
                    topRight: Radius.circular(
                      Dimensions.height20,
                    ),
                  ),
                ),
                child: BigText(
                  text: product.name!,
                  size: Dimensions.height26,
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: Dimensions.height300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                AppConstant.baseUri + AppConstant.uploadUri + product.img!,
                // width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: Dimensions.width20,
                    vertical: Dimensions.height26,
                  ),
                  child: ExpandableTextWidget(
                    title: product.description!,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      // ***** Bottom Navigation Bar : Custom
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min, // $$$$$  สำคัญ มากๆๆๆๆ ต้องมี
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: Dimensions.height10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppIcon(
                  icon: Icons.remove,
                  iconSize: Dimensions.height26,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  onPressed: () {},
                ),
                BigText(
                  text: '\$ ${product.price}  X  0 ',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.height26,
                ),
                AppIcon(
                  icon: Icons.add,
                  iconSize: Dimensions.height26,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(
              Dimensions.width20,
              Dimensions.height30,
              Dimensions.width20,
              Dimensions.height30,
            ),
            height: Dimensions.height120,
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.width20 * 2),
                topRight: Radius.circular(Dimensions.width20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(Dimensions.height20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(Dimensions.height20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                  child: const BigText(
                    text: '\$10 | Add to cart',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
