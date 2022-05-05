import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final double? size;
  final double? iconSize;
  final VoidCallback onPressed; // 1. เพิ่มมาเพื่อ ให้สามารถ ส่งค่า ตอนคลิกได้

  const AppIcon({
    Key? key,
    required this.icon,
    this.backgroundColor = const Color(0xfffcf4e4),
    this.iconColor = const Color(0xff756d54),
    this.size = 50,
    this.iconSize = 16,
    required this.onPressed,  // 2.
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(size! / 2),
      ),
      child: IconButton(
        icon: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
        onPressed: onPressed, // 3.
      ),
    );
  }
}
