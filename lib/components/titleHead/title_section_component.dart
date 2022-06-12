import 'package:flutter/material.dart';

class TitleSectionComponent extends StatelessWidget {
  final String title;
  final Color? titleColor;
  final TextStyle? textStyle;
  final double? padding;
  const TitleSectionComponent({
    Key? key,
    required this.title,
    this.titleColor = Colors.black87,
    this.textStyle,
    this.padding = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: padding!, vertical: padding! / 2),
      child: Text(
        title,
        style: textStyle ??
            Theme.of(context).textTheme.headline5!.copyWith(
                fontWeight: FontWeight.bold,
                color: titleColor),
      ),
    );
  }
}
