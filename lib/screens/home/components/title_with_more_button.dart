import 'package:beginner/constants.dart';
import 'package:beginner/screens/home/components/title_with_custom_underline.dart';
import 'package:flutter/material.dart';

class TitleWithMoreButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const TitleWithMoreButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TitleWithCustomUnderline(
            title: title,
          ),
          ElevatedButton(
            onPressed: onPressed,
            child: const Text('More'),
          ),
        ],
      ),
    );
  }
}