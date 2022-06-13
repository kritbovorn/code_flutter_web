import 'package:beginner/models/product.dart';
import 'package:beginner/widgets/add_to_cart_section.dart';
import 'package:beginner/widgets/color_and_size_section.dart';
import 'package:beginner/widgets/couter_and_favorite_button.dart';
import 'package:beginner/widgets/description_detail.dart';
import 'package:flutter/material.dart';

class DetailDescription extends StatelessWidget {
  const DetailDescription({
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
    return Container(
      margin: EdgeInsets.only(top: screenHeight * 0.35),
      height: screenHeight * 0.65,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: screenHeight * 0.1),
          SizedBox(
            height: (screenHeight * 0.65) -
                (screenHeight * 0.1) -
                MediaQuery.of(context).padding.bottom,
            child: Column(
              children: [
                ColorAndSizeSection(colorSets: colorSets, product: product),
                DescriptionDetail(product: product),
                CouterAndFavoriteButton(product: product),
                AddToCartSection(product: product),
              ],
            ),
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}
