import 'package:beginner/widgets/add_to_cart_button.dart';
import 'package:beginner/widgets/buy_now_button.dart';
import 'package:flutter/material.dart';

import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';

class AddToCartSection extends StatelessWidget {
  final Product product;
  const AddToCartSection({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: kDefaultPadding * 1.5,
          left: kDefaultPadding,
          right: kDefaultPadding),
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.only(right: kDefaultPadding * 2),
              child: AddToCartButton(product: product)),
          Expanded(child: BuyNowButton(product: product)),
        ],
      ),
    );
  }
}
