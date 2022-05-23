import 'package:beginner/screens/home/components/feature_plant_card.dart';
import 'package:flutter/material.dart';

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
            image: 'assets/images/bottom_img_1.png',
            onPressed: () {},
          ),
          FeaturePlantCard(
            image: 'assets/images/bottom_img_2.png',
            onPressed: () {},
          ),
          FeaturePlantCard(
            image: 'assets/images/bottom_img_1.png',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}