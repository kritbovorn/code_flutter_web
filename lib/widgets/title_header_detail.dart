import 'package:beginner/components/titleHead/title_section_component.dart';
import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';
import 'package:flutter/material.dart';


class TitleHeaderDetail extends StatelessWidget {
  const TitleHeaderDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleSectionComponent(
            title: 'Aristocratic Hand Bag',
            padding: 0,
            textStyle: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          TitleSectionComponent(
            title: product.title,
            padding: 0,
            textStyle: Theme.of(context).textTheme.headline4!.copyWith(
                fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }
}