import 'package:beginner/screen/detail/components/add_to_cart.dart';
import 'package:beginner/screen/detail/components/color_and_size.dart';
import 'package:beginner/screen/detail/components/counter_with_favorite_button.dart';
import 'package:beginner/screen/detail/components/description.dart';
import 'package:flutter/material.dart';

import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';
import 'package:beginner/screen/detail/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: size.height * 0.7,
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    Description(product: product),
                    CounterWithFavoriteButton(
                      product: product,
                    ),
                    AddToCart(product: product)
                  ],
                ),
              ),
              ProductTitleWithImage(size: size, product: product),
            ],
          ),
        ],
      ),
    );
  }
}
