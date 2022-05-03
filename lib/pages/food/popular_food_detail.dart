import 'package:beginner/utils/colors.dart';
import 'package:beginner/widgets/app_column.dart';
import 'package:beginner/utils/dimensions.dart';
import 'package:beginner/widgets/app_icon.dart';
import 'package:beginner/widgets/big_text.dart';
import 'package:beginner/widgets/small_text.dart';
import 'package:flutter/material.dart';

class PopularFoodDetail extends StatefulWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  State<PopularFoodDetail> createState() => _PopularFoodDetailState();
}

class _PopularFoodDetailState extends State<PopularFoodDetail> {
  int numberOfLiked = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            width: double.maxFinite,
            height: Dimensions.height350,
            child: Image.asset(
              'assets/image/food0.png',
              fit: BoxFit.cover,
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
                      children: const [
                        AppIcon(
                          icon: Icons.arrow_back_ios,
                        ),
                        AppIcon(
                          icon: Icons.shopping_cart_outlined,
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
                            title: 'Chinese Side',
                            numberOfLiked: numberOfLiked,
                          ),
                          Padding(
                            padding: EdgeInsets.all(Dimensions.height20),
                            child: const BigText(text: 'Introduce'),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: Dimensions.height15,
                              bottom: Dimensions.height15,
                              left: Dimensions.height20,
                              right: Dimensions.height20,
                            ),
                            child: SmallText(
                              size: Dimensions.height18,
                              text:
                                  'Chicken marinated in a spiced yoghurt is placed in a large pot, then layered with fried onions (cheeky easy sub below !), fresh coriander/cilantro , then par boiled I...',
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.height20),
                            child: Row(
                              children: [
                                BigText(
                                  text: 'Show more',
                                  size: Dimensions.height18,
                                  color: AppColors.mainColor,
                                ),
                                const Icon(Icons.arrow_drop_down_sharp),
                              ],
                            ),
                          )
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
              child: const BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
