import 'package:beginner/screens/video_info.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class YourProgramDetailsButton extends StatelessWidget {
  const YourProgramDetailsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Your program',
          style: Theme.of(context).textTheme.headline6,
        ),
        TextButton(
          child: Row(
            children: const [
              Text('Details'),
              Icon(
                Icons.arrow_forward,
              ),
            ],
          ),
          onPressed: () {
            Get.to(() => const VideoInfo());
          },
        ),
      ],
    );
  }
}
