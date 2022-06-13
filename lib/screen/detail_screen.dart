import 'package:beginner/widgets/body.dart';
import 'package:flutter/material.dart';

import 'package:beginner/components/appBar/app_bar_action_icons_component.dart';
import 'package:beginner/models/product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Color> colorSets = [
      const Color(0xff356c95),
      const Color.fromARGB(255, 213, 223, 33),
      const Color.fromARGB(255, 242, 79, 9)
    ];
    double screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBarActionIconsComponent(
        iconThemeDataColor: Colors.white,
        backgroundColor: product.color,
      ),
      body: Body(screenHeight: screenHeight, colorSets: colorSets, product: product),
    );
  }
}

