import 'package:beginner/constant/constant.dart';
import 'package:beginner/utils/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeaturedTile extends StatelessWidget {
  FeaturedTile({Key? key}) : super(key: key);

  final List<String> titles = [
    'Sci-fi',
    'Photgraphy',
    'Romance',
    'Sci-fi',
    'Photgraphy',
    'Romance'
  ];
  final List<String> assets = [
    'assets/images/test1.jpeg',
    'assets/images/test2.jpeg',
    'assets/images/test3.jpeg',
    'assets/images/test1.jpeg',
    'assets/images/test2.jpeg',
    'assets/images/test3.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var isLarge = ResponsiveWidget.isLargeScreen(context);

    return ResponsiveWidget.isSmallScreen(context)
        ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  flex: 18,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ...Iterable.generate(assets.length).map((e) => Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: screenSize.width * 0.55,
                                    height: screenSize.width * 0.35,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        assets[e],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      titles[e],
                                      style: GoogleFonts.roboto(
                                          color: textColor,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Row(
              children: [
                const Expanded(
                  child: SizedBox(),
                ),
                Expanded(
                  flex: isLarge ? 10 : 18,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...Iterable.generate(assets.take(3).length) .map((e) => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: isLarge ? screenSize.width * 0.25 : screenSize.width * 0.28,
                                    height: isLarge ? screenSize.width * 0.15 : screenSize.width * 0.18,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        assets[e],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 22),
                                    child: Text(
                                      titles[e],
                                      style: GoogleFonts.roboto(
                                          color: textColor,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ))
                    ],
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
          );
  }
}
