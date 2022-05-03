import 'package:beginner/utils/colors.dart';
import 'package:flutter/material.dart';

class IconStar extends StatelessWidget {
  final int index;
  final int numberOfLiked;

  const IconStar({
    Key? key,
    required this.index,
    required this.numberOfLiked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Icon(
      Icons.star,
      size: 15,
      color: index < numberOfLiked ? Colors.orange : AppColors.mainColor,
    );
  }
}
