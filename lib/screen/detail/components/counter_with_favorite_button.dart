import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:beginner/models/product.dart';
import 'package:beginner/screen/detail/components/cart_counter.dart';

class CounterWithFavoriteButton extends StatelessWidget {
  final Product product;
  const CounterWithFavoriteButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(
          product: product,
        ),
        Container(
          padding: const EdgeInsets.all(10),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: product.color,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }
}
