import 'package:beginner/theme/app_color.dart';
import 'package:beginner/theme/constants.dart';
import 'package:beginner/widgets/home/header_card_section_home.dart';
import 'package:flutter/material.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({Key? key}) : super(key: key);

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            left: Constants.defaultPadding,
            right: Constants.defaultPadding),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColor.firstGradientBegin, AppColor.firstGradientEnd],
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
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.info_outline_rounded),
                  onPressed: () {},
                ),
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(vertical: Constants.defaultPadding / 2),
              child: const HeaderCardSectionHome(),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Constants.defaultPadding / 2),
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      AppColor.firstGradientEnd.withOpacity(0.6),
                      AppColor.firstGradientBegin
                    ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: Constants.defaultPadding / 2),
                        child: Icon(
                          Icons.timer,
                          size: 20,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      Text(
                        '68 min',
                        style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            color: Theme.of(context).colorScheme.surface),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
