import 'package:beginner/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainHeading extends StatelessWidget {
const MainHeading({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 62),
      child: Column(
        children: [
          Text(
            'Knowledge Diversity',
            style: GoogleFonts.roboto(fontSize: 48, color: textColor, fontWeight: FontWeight.w700, letterSpacing: 1),
          )
        ],
      ),
    );
  }
}