import 'package:beginner/constant/constant.dart';
import 'package:beginner/utils/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedHeading extends StatelessWidget {
  const FeaturedHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isLarge = ResponsiveWidget.isLargeScreen(context);
    var isSmall = ResponsiveWidget.isSmallScreen(context);

    return Padding(
      padding: const EdgeInsets.only( top: 82),
      child: Row(
        children: [
          const Expanded(child: SizedBox()),
          Expanded(
              flex: isLarge ? 10 : 18,
              child: isSmall
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Featured',
                          style: GoogleFonts.roboto(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: textColor),
                        ),
                        Text(
                          'Clue of the wooden cottage',
                          style: GoogleFonts.roboto(color: textColor),
                        )
                      ],
                    )
                  : Row(
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
                    )),
          const Expanded(child: SizedBox()),
        ],
      ),
    );
  }
}
