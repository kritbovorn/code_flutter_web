import 'package:beginner/utils/colors.dart';
import 'package:beginner/utils/dimensions.dart';
import 'package:beginner/widgets/small_text.dart';
import 'package:flutter/material.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String title;
  const ExpandableTextWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _ExpandableTextWidgetState createState() => _ExpandableTextWidgetState();
}

class _ExpandableTextWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;
  bool isHiddenText = true;
  double textHeight = Dimensions.screenHeight / 3.8;

  @override
  void initState() {
    super.initState();

    if (widget.title.length > textHeight) {
      firstHalf = widget.title.substring(0, textHeight.toInt());
      secondHalf =
          widget.title.substring(textHeight.toInt() + 1, widget.title.length);
    } else {
      firstHalf = widget.title;
      secondHalf = '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: secondHalf.isEmpty
          ? SmallText(
              text: firstHalf,
              color: AppColors.paraColor,
              lineHeight: 1.5,
            )
          : Column(
              children: [
                SmallText(
                  text: isHiddenText
                      ? (firstHalf + '...')
                      : (firstHalf + secondHalf),
                  size: Dimensions.height16,
                  color: AppColors.paraColor,
                  lineHeight: 1.5,
                ),
                SizedBox(
                  height: Dimensions.height10,
                ),
                InkWell(
                  onTap: (() {
                    setState(() {
                      isHiddenText = !isHiddenText;
                    });
                  }),
                  child: Row(
                    children: [
                      SmallText(
                        text: isHiddenText ? 'Show more' : 'Show less',
                        color: AppColors.mainColor,
                        size: Dimensions.height18,
                      ),
                      Icon(
                        isHiddenText
                            ? Icons.arrow_drop_down
                            : Icons.arrow_drop_up,
                        color: AppColors.mainColor,
                      )
                    ],
                  ),
                )
              ],
            ),
    );
  }
}
