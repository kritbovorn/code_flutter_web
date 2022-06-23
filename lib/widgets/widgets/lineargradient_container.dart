import 'package:flutter/material.dart';

import 'package:beginner/theme/app_color.dart';
import 'package:beginner/theme/constants.dart';

class LineargradientContainer extends StatelessWidget {
  final Widget widget;
  const LineargradientContainer({
    Key? key,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: Constants.defaultPadding / 2),
      height: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(colors: [
          AppColor.firstGradientEnd.withOpacity(0.8),
          AppColor.firstGradientBegin
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
      ),
      child: widget,
    );
  }
}
