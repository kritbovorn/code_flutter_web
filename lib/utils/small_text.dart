import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? size;
  final double? lineHeight;
  const SmallText({
    Key? key,
    required this.text,
    this.color = const Color(0xffccc7c5),
    this.size = 12,
    this.lineHeight = 1.2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Roboto',
          color: color,
          fontSize: size,
          height: lineHeight),
    );
  }
}
