import 'package:flutter/material.dart';

import 'package:beginner/mainWidget/multi_icon_shared.dart';
import 'package:beginner/utils/dimensions.dart';
import 'package:beginner/widgets/big_text.dart';
import 'package:beginner/widgets/icon_star.dart';
import 'package:beginner/widgets/small_text.dart';

class AppColumn extends StatefulWidget {
  final int numberOfLiked;
  final String title;
  const AppColumn({
    Key? key,
    required this.numberOfLiked,
    required this.title,
  }) : super(key: key);

  @override
  State<AppColumn> createState() => _AppColumnState();
}

class _AppColumnState extends State<AppColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: Dimensions.height20,
            left: Dimensions.height20,
            right: Dimensions.height20,
          ),
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(
                  text: widget.title,
                  size: Dimensions.font26,
                ),
                SizedBox(height: Dimensions.height5),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                          5,
                          (index) => IconStar(
                              index: index,
                              numberOfLiked: widget.numberOfLiked)),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const SmallText(text: '4.5'),
                    const SizedBox(
                      width: 10,
                    ),
                    const SmallText(text: '1287'),
                    const SizedBox(
                      width: 5,
                    ),
                    const SmallText(text: 'comments.')
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.height10,
          ),
          child: const MultiIconShared(),
        ),
      ],
    );
  }
}
