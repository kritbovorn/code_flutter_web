import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Somethings',
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(color: Theme.of(context).colorScheme.primary)),
        Text('Somethings',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Theme.of(context).colorScheme.error)),
        Text('Somethings',
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: Theme.of(context).colorScheme.onSurface)),
      ],
    );
  }
}
