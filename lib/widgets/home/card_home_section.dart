import 'package:beginner/theme/app_color.dart';
import 'package:beginner/theme/constants.dart';
import 'package:beginner/widgets/home/clock_minute.dart';
import 'package:beginner/widgets/home/header_card_section_home.dart';
import 'package:beginner/widgets/widgets/text_button_border_circle.dart';
import 'package:flutter/material.dart';

class CardHomeSection extends StatelessWidget {
  const CardHomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: Constants.defaultPadding / 2),
      padding: EdgeInsets.all(Constants.defaultPadding),
      width: screenSize.width,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(70),
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        gradient: LinearGradient(
          colors: [
            AppColor.firstGradientBegin,
            AppColor.firstGradientEnd,
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.centerRight,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColor.defautPrimaryColor.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 1,
          ),
          BoxShadow(
            color: AppColor.defautPrimaryColor.withOpacity(0.1),
            offset: const Offset(0, -4),
            blurRadius: 4,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            flex: 3,
            child: HeaderCardSectionHome(),
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const ClockMinute(iconData: Icons.timer, title: '60 min'),
                TextButtonBorderCircle(
                  iconData: Icons.play_circle,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
