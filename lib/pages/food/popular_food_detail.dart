import 'package:beginner/utils/colors.dart';
import 'package:beginner/widgets/app_column.dart';
import 'package:beginner/utils/dimensions.dart';
import 'package:beginner/widgets/app_icon.dart';
import 'package:beginner/widgets/big_text.dart';
import 'package:beginner/widgets/expandable_text_widget.dart';
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
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: Dimensions.height20,
                                  right: Dimensions.height20,
                                  bottom: Dimensions.height20),
                              child: const SingleChildScrollView(
                                child: ExpandableTextWidget(
                                  title:
                                      'Phuket has welcomed its first group of foreign travellers arriving by sea under the Test & Go entry programme.Nanthasiri Ronnasiri, director of the Phuket office of the Tourism Authority of Thailand, said the four Indonesian nationals arrived from Singapore on a private yacht called The Maggie,\n which docked at Ao Por pier.They were the first to arrive under the scheme by sea after the Centre for Covid-19 Situation Administration (CCSA) early this month eased travel restrictions to allow overseas arrivals by land and sea in addition to by air.Fully vaccinated travellers arriving by sea are required to take an RT-PCR test upon arrival and must remain aboard their vessels until the result is released. \n which docked at Ao Por pier.They were the first to arrive under the scheme by sea after the Centre for Covid-19 Situation Administration (CCSA) early this month eased travel restrictions to allow overseas arrivals by land and sea in addition to by air.\n Fully vaccinated travellers arriving by sea are required to take an RT-PCR test upon arrival and must remain aboard their vessels until the result is released.',
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
              child: const BigText(
                text: '\$10 | Add to cart',
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
