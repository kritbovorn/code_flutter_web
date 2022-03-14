import 'package:flutter/material.dart';

class BottomBarColumn extends StatelessWidget {
  final String heading;
  final String s1;
  final String s2;
  final String s3;

  const BottomBarColumn(
      {Key? key,
      required this.heading,
      required this.s1,
      required this.s2,
      required this.s3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          heading,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            s1,
            style: const TextStyle(
              color: Color.fromARGB(255, 201, 198, 198),
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            s2,
            style: const TextStyle(
              color: Color.fromARGB(255, 201, 198, 198),
              fontSize: 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            s3,
            style: const TextStyle(
              color: Color.fromARGB(255, 201, 198, 198),
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
