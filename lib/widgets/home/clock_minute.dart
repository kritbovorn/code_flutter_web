import 'package:beginner/theme/app_color.dart';
import 'package:beginner/theme/constants.dart';
import 'package:flutter/material.dart';

class ClockMinute extends StatelessWidget {
  const ClockMinute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Constants.defaultPadding / 2),
          child: Icon(
            Icons.timer,
            color: AppColor.defautPrimaryColor,
          ),
        ),
        Text(
          '60 min',
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: AppColor.defautPrimaryColor),
        ),
      ],
    );
  }
}
