import 'package:flutter/material.dart';

class HeaderCardSectionHome extends StatelessWidget {
  const HeaderCardSectionHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Next workout',
          style: Theme.of(context)
              .textTheme
              .subtitle1!
              .copyWith(color: Theme.of(context).colorScheme.surface),
        ),
        Text(
          'Legs Toning',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Theme.of(context).colorScheme.surface),
        ),
        Text(
          'and Glutes Workout',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: Theme.of(context).colorScheme.surface),
        ),
      ],
    );
  }
}
