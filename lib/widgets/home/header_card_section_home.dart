import 'package:beginner/theme/app_color.dart';
import 'package:flutter/material.dart';

class HeaderCardSectionHome extends StatelessWidget {
  const HeaderCardSectionHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Next workout',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: AppColor.defautPrimaryColor),
        ),
        Text(
          'Legs Toning',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: AppColor.defautPrimaryColor),
        ),
        Text(
          'and Glutes Workout',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: AppColor.defautPrimaryColor),
        ),
      ],
    );
  }
}
