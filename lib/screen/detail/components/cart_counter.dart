import 'package:flutter/material.dart';

import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';

class CartCounter extends StatefulWidget {
  final Product product;
  const CartCounter({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItem = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          child: const Icon(Icons.remove),
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            side: BorderSide(
              color: widget.product.color,
              width: 2,
            ),
          ),
          onPressed: () {
            if (numOfItem > 0) {
              setState(() {
                numOfItem--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            numOfItem.toString().padLeft(2, "0"),
            style: const TextStyle(
              color: kTextColor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        OutlinedButton(
          child: const Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            shape: const StadiumBorder(),
            side: BorderSide(
              color: widget.product.color,
              width: 2,
            ),
          ),
          onPressed: () {
            setState(() {
              numOfItem++;
            });
          },
        ),
      ],
    );
  }
}
