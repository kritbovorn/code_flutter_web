import 'package:beginner/screens/home/components/title_with_more_button.dart';
import 'package:flutter/material.dart';

import 'package:beginner/screens/home/components/header_with_searc_box.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            title: 'Recommended',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}



