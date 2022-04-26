import 'package:beginner/utils/colors.dart';
import 'package:beginner/widgets/icon_text_widget.dart';
import 'package:flutter/material.dart';

class MultiIconShared extends StatelessWidget {
  const MultiIconShared({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        IconTextWidget(
          icon: Icons.circle_sharp,
          text: 'Normal',
          iconColor: AppColors.iconColor1,
        ),
        IconTextWidget(
          icon: Icons.location_on,
          text: '1.7 km',
          iconColor: AppColors.mainColor,
        ),
        IconTextWidget(
          icon: Icons.access_time_rounded,
          text: '32 min',
          iconColor: AppColors.iconColor2,
        )
      ],
    );
  }
}
