import 'package:beginner/constants.dart';
import 'package:beginner/widgets/color_dot.dart';
import 'package:flutter/material.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key? key,
    required this.colorSets,
  }) : super(key: key);

  final List<Color> colorSets;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding / 2),
      child: Row(
        children: widget.colorSets
            .asMap()
            .entries
            .map(
              (e) => ColorDot(
                color: e.value,
                index: e.key,
                selectedIndex: selectedIndex,
                onTap: () => setState(() => selectedIndex = e.key),
              ),
            )
            .toList(),
      ),
    );
  }
}
