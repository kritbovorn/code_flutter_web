import 'package:beginner/models/product.dart';
import 'package:beginner/widgets/detail_description.dart';
import 'package:beginner/widgets/product_title_with_image.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.screenHeight,
    required this.colorSets,
    required this.product,
  }) : super(key: key);

  final double screenHeight;
  final List<Color> colorSets;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenHeight,
      child: Stack(
        children: [
          DetailDescription(screenHeight: screenHeight, colorSets: colorSets, product: product,),
          ProductTitleWithImage(product: product),
        ],
      ),
    );
  }
}
