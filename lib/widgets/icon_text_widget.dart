import 'package:beginner/utils/colors.dart';
import 'package:flutter/material.dart';

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
        size: 18,
      ),
      label: Text(
        text,
        style: const TextStyle(
          color: AppColors.mainColor,
          fontSize: 10,
        ),
      ),
    );
  }
}
