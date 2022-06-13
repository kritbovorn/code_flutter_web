import 'package:beginner/models/product.dart';
import 'package:beginner/widgets/color_and_size_detail.dart';
import 'package:beginner/widgets/color_set_section.dart';
import 'package:flutter/material.dart';


class ColorAndSizeSection extends StatelessWidget {
  const ColorAndSizeSection({
    Key? key,
    required this.colorSets,
    required this.product,
  }) : super(key: key);

  final List<Color> colorSets;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ColorSetSection(colorSets: colorSets),
        ColorAndSizeDetail(product: product),
      ],
    );
  }
}