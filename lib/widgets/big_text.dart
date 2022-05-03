import 'package:beginner/utils/dimensions.dart';
import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final TextOverflow? textOverflow;
  const BigText({
    Key? key,
    required this.text,
    this.color = const Color(0xFF332D2B),
    this.size = 0,
    this.textOverflow = TextOverflow.ellipsis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size == 0 ? Dimensions.font20 : size,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w400,
      ),
      maxLines: 1,
      overflow: textOverflow,
    );
  }
}
