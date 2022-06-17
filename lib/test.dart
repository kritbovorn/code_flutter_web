import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
   TextButton(
      child: const Icon(
        Icons.play_circle,
        size: 55,
        color: Colors.white,
      ),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(0),
        shape: CircleBorder(
          side: BorderSide(width: 8, color: Colors.blue.withOpacity(0.3)),
        ),
      ),
      onPressed: () {},
    );
  }
}
