import 'package:beginner/widgets/price_and_product_image.dart';
import 'package:beginner/widgets/title_header_detail.dart';
import 'package:flutter/material.dart';

import 'package:beginner/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  const ProductTitleWithImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    return SizedBox(
      height: screenHeight * 0.42,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TitleHeaderDetail(product: product),
          PriceAndProductImage(product: product)
        ],
      ),
    );
  }
}
