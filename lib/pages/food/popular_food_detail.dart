import 'package:beginner/controllers/popular_product_controller.dart';
import 'package:beginner/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:beginner/routes/route_helper.dart';
import 'package:beginner/utils/colors.dart';
import 'package:beginner/utils/dimensions.dart';
import 'package:beginner/widgets/app_column.dart';
import 'package:beginner/widgets/app_icon.dart';
import 'package:beginner/widgets/big_text.dart';
import 'package:beginner/widgets/expandable_text_widget.dart';

class PopularFoodDetail extends StatefulWidget {
  final int pageId;
  const PopularFoodDetail({
    Key? key,
    required this.pageId,
  }) : super(key: key);

  @override
  State<PopularFoodDetail> createState() => _PopularFoodDetailState();
}

class _PopularFoodDetailState extends State<PopularFoodDetail> {
  int numberOfLiked = 4;

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductLists[widget.pageId];
    // debugPrint('@@@ Page ID is ' + widget.pageId.toString());
    // debugPrint('@@@@ Product Name is: ' + product.name.toString());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: Dimensions.height350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  AppConstant.baseUri + AppConstant.uploadUri + product.img!,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            bottom: false,
            child: SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(Dimensions.height20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppIcon(
                          icon: Icons.arrow_back_ios,
                          onPressed: () =>
                              Get.toNamed(RouteHelper.getInitial()),
                        ),
                        AppIcon(
                          icon: Icons.shopping_cart_outlined,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions.height200,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(Dimensions.height20),
                          topRight: Radius.circular(Dimensions.height20),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppColumn(
                            title: product.name!,
                            numberOfLiked: numberOfLiked,
                          ),
                          Padding(
                            padding: EdgeInsets.all(Dimensions.height20),
                            child: const BigText(text: 'Introduce'),
                          ),
                          Expanded(
                            // 1.  ต้องใช้ Expanded()
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: Dimensions.height20,
                                  right: Dimensions.height20,
                                  bottom: Dimensions.height20),
                              child: SingleChildScrollView(
                                // 2. ต้องใช้ SingleChildScrollView()
                                child: ExpandableTextWidget(
                                  // 3. ExpandableTextWidget()
                                  title: product.description!,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
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
              child: Row(
                children: [
                  const Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  const BigText(text: '0'),
                  SizedBox(
                    width: Dimensions.width10 / 2,
                  ),
                  const Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor,
              ),
              child: BigText(
                text: '\$${product.price!} | Add to cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
