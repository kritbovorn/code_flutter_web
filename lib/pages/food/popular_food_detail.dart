import 'package:beginner/widgets/app_column.dart';
import 'package:beginner/utils/dimensions.dart';
import 'package:beginner/widgets/app_icon.dart';
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
      backgroundColor: const Color.fromARGB(250, 250, 250, 250),
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
                      child: AppColumn(
                        title: 'Chinese Side',
                        numberOfLiked: numberOfLiked,
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
