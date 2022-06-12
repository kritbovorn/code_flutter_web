import 'package:beginner/components/appBar/app_bar_action_icons_component.dart';
import 'package:flutter/material.dart';

import 'package:beginner/models/product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBarActionIconsComponent(
        iconThemeDataColor: Colors.white,
        backgroundColor: product.color,
      ),
      body: SingleChildScrollView(  
        child: SizedBox(  
          height: size.height,
          child: Stack(  
            children: [
              
            ],
          ),
        ),
      ),
    );
  }
}
