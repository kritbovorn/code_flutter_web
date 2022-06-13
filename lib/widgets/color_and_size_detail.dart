import 'package:beginner/models/product.dart';
import 'package:flutter/material.dart';


class ColorAndSizeDetail extends StatelessWidget {
  final Product product;
  const ColorAndSizeDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Size',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Colors.black87),
          ),
          Text(
            '${product.size} cm.',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}