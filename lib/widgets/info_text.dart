import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String title;

  const InfoText({Key? key, required this.type, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$type : ',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Flexible(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        )
      ],
    );
  }
}
