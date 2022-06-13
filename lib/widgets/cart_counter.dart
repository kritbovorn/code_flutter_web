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
          child: const Icon(Icons.add),
          style: OutlinedButton.styleFrom(
            minimumSize: const Size(0, 0),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          ),
          onPressed: () {},
        ),
        OutlinedButton(
          child: const Text('Click Me'),
          onPressed: () {},
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.shopping_cart),
          label: const Text('My Cart'),
          onPressed: () {},
        ),
        
      ],
    );
  }
}
