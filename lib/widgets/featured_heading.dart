import 'package:beginner/constant/constant.dart';
import 'package:beginner/utils/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: ResponsiveWidget.isLargeScreen(context) ? 82 : 42),
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(child: SizedBox()),
              Expanded(
                flex: ResponsiveWidget.isSmallScreen(context) ? 18 : 10,
                child: Row(
                  children: [
                    Text(
                      'Featured',
                      style: GoogleFonts.roboto(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: textColor),
                    ),
                    const Expanded(child: SizedBox()),
                    Text(
                      'Clue of the wooden cottage',
                      style: GoogleFonts.roboto(color: textColor),
                    )
                  ],
                ),
              ),
              const Expanded(child: SizedBox()),
            ],
          )
        ],
      ),
    );
  }
}
