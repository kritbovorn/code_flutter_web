import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';
import 'package:flutter/material.dart';

class DescriptionDetail extends StatelessWidget {
  const DescriptionDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      child: Text(
        product.description,
        style: const TextStyle(
          color: Colors.black87,
          height: 1.4,
          fontSize: 16,
        ),
        maxLines: 5,
      ),
    );
  }
}
