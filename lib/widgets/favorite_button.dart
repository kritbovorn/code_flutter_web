import 'package:beginner/models/product.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  final Product product;
  const FavoriteButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      child: const Icon(Icons.favorite),
      style: OutlinedButton.styleFrom(
          primary: Colors.white,
          backgroundColor: product.color,
          minimumSize: const Size(0, 0),
          padding: const EdgeInsets.all(12),
          shape: const CircleBorder(side: BorderSide.none)),
      onPressed: () {},
    );
  }
}
