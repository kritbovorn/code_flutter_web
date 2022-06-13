import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';
import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  final Product product;
  const AddToCartButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: const Icon(Icons.shopping_cart_checkout),
      style: OutlinedButton.styleFrom(
          primary: product.color,
          shape:
              BeveledRectangleBorder(borderRadius: BorderRadius.circular(12)),
          minimumSize: const Size(0, 0),
          padding: const EdgeInsets.all(kDefaultPadding),
          side: const BorderSide(width: 3, color: kTextLightColor)),
      onPressed: () {},
    );
  }
}
