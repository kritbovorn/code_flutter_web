import 'package:beginner/models/product.dart';
import 'package:flutter/material.dart';

import 'package:beginner/constants.dart';
import 'package:beginner/widgets/cart_counter.dart';
import 'package:beginner/widgets/favorite_button.dart';

class CouterAndFavoriteButton extends StatelessWidget {
  final Product product;
  const CouterAndFavoriteButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CartCounter(),
          FavoriteButton(product: product),
        ],
      ),
    );
  }
}
