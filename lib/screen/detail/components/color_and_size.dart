import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';
import 'package:beginner/screen/detail/components/color_dot.dart';
import 'package:flutter/material.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Color',
                style: TextStyle(fontSize: 18, color: kTextColor),
              ),
              Row(
                children: const [
                  ColorDot(color: Color(0xff356c95), isSelected: true),
                  ColorDot(color: Color(0xfff8c078)),
                  ColorDot(color: Color(0xffa29b9b)),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Size',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 18,
                ),
              ),
              Text(
                '${product.size} cm',
                style: const TextStyle(
                  color: kTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
