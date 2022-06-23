import 'package:flutter/material.dart';

import 'package:beginner/theme/constants.dart';

class ClockMinute extends StatelessWidget {
  final IconData iconData;
  final String title;
  final Color? iconColor;
  final Color? titleColor;
  const ClockMinute({
    Key? key,
    required this.iconData,
    required this.title,
    this.iconColor,
    this.titleColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: Constants.defaultPadding / 2),
          child: Icon(
            iconData,
            color: iconColor ?? Colors.white,
          ),
        ),
        Text(title,
            style: Theme.of(context)
                .textTheme
                .bodyText2!
                .copyWith(color: titleColor ?? Colors.white)),
      ],
    );
  }
}
