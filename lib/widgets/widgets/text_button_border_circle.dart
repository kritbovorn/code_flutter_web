import 'package:flutter/material.dart';

class TextButtonBorderCircle extends StatelessWidget {
  final IconData iconData;
  final double? size = 55;
  final Color? iconColor;
  final double? borderWidth;
  final Color? borderColor;
  final VoidCallback onPressed;
  const TextButtonBorderCircle({
    Key? key,
    required this.iconData,
    this.iconColor,
    this.borderWidth,
    this.borderColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Icon(
        iconData,
        size: size,
        color: iconColor ?? Colors.white,
      ),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        shape: CircleBorder(
          side: BorderSide(
              width: borderWidth ?? 8, color:Colors.blue.withOpacity(0.3)),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
