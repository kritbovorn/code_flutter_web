import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';
import 'package:beginner/screen/detail/detail_screen.dart';
import 'package:beginner/screen/home/components/category_component.dart';
import 'package:beginner/screen/home/components/product_card_component.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const CategoryComponent(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: kDefaultPadding,
                mainAxisSpacing: kDefaultPadding,
                childAspectRatio: 0.65,
              ),
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductCardComponent(
                  product: products[index],
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(product: products[index]),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
