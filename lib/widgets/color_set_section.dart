import 'package:beginner/components/titleHead/title_section_component.dart';
import 'package:beginner/constants.dart';
import 'package:beginner/widgets/color_dots.dart';
import 'package:flutter/material.dart';


class ColorSetSection extends StatelessWidget {
  const ColorSetSection({
    Key? key,
    required this.colorSets,
  }) : super(key: key);

  final List<Color> colorSets;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: [
            TitleSectionComponent(
                title: 'Color',
                padding: 0,
                textStyle: Theme.of(context)
                    .textTheme
                    .headline6),
            ColorDots(
              colorSets: colorSets,
            ),
          ],
        ),
      ),
    );
  }
}