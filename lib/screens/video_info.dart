import 'package:beginner/theme/app_color.dart';
import 'package:beginner/theme/constants.dart';
import 'package:beginner/widgets/home/clock_minute.dart';
import 'package:beginner/widgets/home/header_card_section_home.dart';
import 'package:beginner/widgets/widgets/lineargradient_container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: Constants.defaultPadding,
                right: Constants.defaultPadding),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.firstGradientBegin.withOpacity(0.9),
                  AppColor.firstGradientEnd
                ],
                begin: Alignment.centerLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                      ),
                      onPressed: () => Get.back(),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Constants.defaultPadding),
                  child: const HeaderCardSectionHome(),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: Constants.defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const LineargradientContainer(
                        widget: ClockMinute(
                          iconData: Icons.timer,
                          title: '60 min',
                        ),
                      ),
                      SizedBox(width: Constants.defaultPadding),
                      const Expanded(
                        child: LineargradientContainer(
                          widget: ClockMinute(
                            iconData: Icons.handyman_rounded,
                            title: 'Resistent band, kettble',
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top +
                    MediaQuery.of(context).size.height * 0.3),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(60),
              ),
              color: Theme.of(context).colorScheme.onBackground,
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: Constants.defaultPadding * 2,
                    left: Constants.defaultPadding,
                    right: Constants.defaultPadding,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Circuit 1: Legs Toning',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      ClockMinute(
                        iconData: Icons.loop,
                        title: '3 sets',
                        iconColor: Theme.of(context).colorScheme.secondary,
                        titleColor: Theme.of(context).colorScheme.secondary,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
