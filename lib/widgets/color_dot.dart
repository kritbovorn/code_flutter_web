import 'package:beginner/constants.dart';
import 'package:flutter/material.dart';

class ColorDot extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final Color color;
  final VoidCallback onTap;
  const ColorDot({
    Key? key,
    required this.selectedIndex,
    required this.index,
    required this.color,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: kDefaultPadding / 2),
        padding: const EdgeInsets.all(2.5),
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color: selectedIndex == index ? color : Colors.transparent),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }
}
