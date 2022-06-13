import 'package:beginner/constants.dart';
import 'package:flutter/material.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          child: const Icon(Icons.remove),
          onPressed: () {
            if (numOfItems > 0) {
              setState(() => numOfItems--);
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        OutlinedButton(
          child: const Icon(Icons.add),
          onPressed: () => setState(() => numOfItems++),
        ),
      ],
    );
  }
}
