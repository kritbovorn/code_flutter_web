import 'package:beginner/constant/constant.dart';
import 'package:beginner/utils/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHeading extends StatelessWidget {
const MainHeading({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){

    var isLarge = ResponsiveWidget.isLargeScreen(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 62),
      child: Column(
        children: [
          Text(
            'Knowledge Diversity',
            style: GoogleFonts.roboto(fontSize: isLarge ? 45 : 28, color: textColor, fontWeight: FontWeight.w700, letterSpacing: 1),
          )
        ],
      ),
    );
  }
}