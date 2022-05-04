import 'package:beginner/pages/home/food_page_body.dart';
import 'package:beginner/widgets/big_text.dart';
import 'package:beginner/utils/colors.dart';
import 'package:beginner/utils/dimensions.dart';
import 'package:beginner/widgets/small_text.dart';
import 'package:flutter/material.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 250, 250, 250),
      body: SafeArea(
        child: SizedBox(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(vertical: Dimensions.height20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const BigText(
                            text: 'Bangladesh',
                            color: AppColors.mainColor,
                          ),
                          Row(
                            children: const [
                              SmallText(
                                text: 'Narsingdi',
                                color: Colors.black54,
                              ),
                              Icon(
                                Icons.arrow_drop_down_rounded,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: Dimensions.height45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                      ),
                      child: Icon(
                        Icons.search,
                        size: Dimensions.iconSize24,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const Expanded(
                child: SingleChildScrollView(
                  child: FoodPageBody(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
