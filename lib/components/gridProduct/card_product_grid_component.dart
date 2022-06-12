import 'package:beginner/models/product.dart';
import 'package:flutter/material.dart';


class CardProductGridComponent extends StatelessWidget {
  final Product product;
  final Color? titleColor;
  final VoidCallback onPressed;
  final double? padding;
  const CardProductGridComponent({
    Key? key,
    required this.product,
    this.titleColor = Colors.black,
    required this.onPressed,
    this.padding = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding:  EdgeInsets.all(padding!),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(padding! / 2),
              ),
              child: Image.asset(product.image),
            ),
          ),
          Container(
            padding:  EdgeInsets.symmetric(horizontal: padding! / 2),
            height: 50,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$${product.price}',
                  style: TextStyle(
                    color: titleColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
