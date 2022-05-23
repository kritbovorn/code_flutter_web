import 'package:beginner/screens/home/components/recommend_plant_card.dart';
import 'package:flutter/material.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 400,
            onPressed: () {},
          ),
          RecommendPlantCard(
            image: 'assets/images/image_2.png',
            title: 'Samantha',
            country: 'Russia',
            price: 400,
            onPressed: () {},
          ),
          RecommendPlantCard(
            image: 'assets/images/image_3.png',
            title: 'Samantha',
            country: 'Russia',
            price: 400,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}