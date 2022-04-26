import 'package:beginner/utils/big_text.dart';
import 'package:beginner/utils/colors.dart';
import 'package:beginner/utils/small_text.dart';
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
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const BigText(
                          text: 'Bangladesh',
                          color: AppColors.mainColor,
                        ),
                        Row(
                          children: [
                            const SmallText(
                              text: 'Narsingdi',
                              color: Colors.black54,
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.arrow_drop_down_rounded,
                                size: 30,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.search,
                        // size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
