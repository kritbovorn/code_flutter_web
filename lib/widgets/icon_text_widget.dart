import 'package:beginner/utils/dimensions.dart';
import 'package:flutter/material.dart';

import 'package:beginner/utils/colors.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconTextWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: iconColor,
        size: Dimensions.height20,
      ),
      label: Text(
        text,
        style: TextStyle(
          color: AppColors.mainColor,
          fontSize: Dimensions.height10,
        ),
      ),
    );
  }
}
