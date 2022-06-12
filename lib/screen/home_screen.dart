import 'package:beginner/components/appBar/app_bar_action_icons_component.dart';
import 'package:beginner/components/category/category_component.dart';
import 'package:beginner/components/gridProduct/grid_product_widget.dart';
import 'package:beginner/components/titleHead/title_section_component.dart';
import 'package:beginner/constants.dart';
import 'package:beginner/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarActionIconsComponent(
        backgroundColor: Colors.transparent,
        systemUiOverlayStyle: SystemUiOverlayStyle.dark,
        iconThemeDataColor: kTextColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleSectionComponent(title: 'Women'),
          CategoryComponent(categories: categories),
          const SizedBox(height: kDefaultPadding),
          const GridProductWidget()
        ],
      ),
    );
  }
}
