import 'package:beginner/components/titleHead/title_section_component.dart';
import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';
import 'package:flutter/material.dart';


class PriceAndProductImage extends StatelessWidget {
  const PriceAndProductImage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                TitleSectionComponent(
                  title: 'Price',
                  padding: 0,
                  textStyle:
                      Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                TitleSectionComponent(
                  title: '\$${product.price}',
                  padding: 0,
                  textStyle: Theme.of(context)
                      .textTheme
                      .headline4!
                      .copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Image.asset(
                product.image,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

