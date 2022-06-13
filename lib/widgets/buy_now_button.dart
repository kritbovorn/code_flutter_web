import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';
import 'package:flutter/material.dart';

class BuyNowButton extends StatelessWidget {
  final Product product;
  const BuyNowButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: const Text('Buy Now'),
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: product.color,
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        padding: const EdgeInsets.all(kDefaultPadding),
        shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: () {},
    );
  }
}
