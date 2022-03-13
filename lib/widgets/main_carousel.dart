import 'package:beginner/constant/constant.dart';
import 'package:beginner/customWidgets/custom_inkwell.dart';
import 'package:beginner/utils/responsive_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainCarousel extends StatefulWidget {
  const MainCarousel({Key? key}) : super(key: key);

  @override
  _MainCarouselState createState() => _MainCarouselState();
}

class _MainCarouselState extends State<MainCarousel> {
  final CarouselController carouselController = CarouselController();

  int _current = 0; //  1.   สร้างมาเพื่อรับค่า  index แบบ Public

  String imagePath = 'assets/images/';
  final List<bool> _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  final List<bool> _isSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  List<String> images = [
    'assets/images/asia.jpg',
    'assets/images/africa.jpg',
    'assets/images/europe.jpg',
    'assets/images/south_america.jpg',
    'assets/images/australia.jpg',
    'assets/images/antarctica.jpg',
  ];

  List<String> places = [
    'ASIA',
    'AFRICA',
    'EUROPE',
    'SOUTH AMERICA',
    'AUSTRALIA',
    'ANTRACTICA',
  ];

  List<Widget> generateImageTiles() {
    return images .map( (e) => ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              e,
              fit: BoxFit.cover,
            ),
          ),
        )
        .toList();
  }

  List<Widget> generatePlaces() {
    return places
        .map((e) => Text(
              e,
              style: GoogleFonts.roboto( color: textColor, fontSize: 24, letterSpacing: 3),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var isLarge = ResponsiveWidget.isLargeScreen(context);
    var imageSliders = generateImageTiles();

    return Padding(
      padding: const EdgeInsets.only(bottom: 48),
      child: Row(
        children: [
          const Expanded(
            child: SizedBox(),
          ),
          Expanded(
            flex: ResponsiveWidget.isLargeScreen(context) ? 6 : 18,
            child: Stack(
              children: [
                CarouselSlider(
                  items: generateImageTiles(),
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    aspectRatio: 16 /
                        7, // 2.1  ใช้ AspectRatio  เพื่อเทียบขนาดกับ Carousel
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index; //  1.2  รับค่า  _current

                        for (int i = 0; i < imageSliders.length; i++) {
                          i == index ? _isSelected[i] = true : _isSelected[i] = false;
                        }
                      });
                    },
                  ),
                  carouselController: carouselController,
                ),
                AspectRatio(
                  aspectRatio: 16 / 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        places[ _current], //  1.3  เอาค่า  _current   มาใช้ที่นี่
                        style: GoogleFonts.electrolize( fontSize: isLarge ? 48 : 28, color: textColor, letterSpacing: 2),
                      )
                    ],
                  ),
                ),
                isLarge
                    ? AspectRatio(
                        aspectRatio: 16 / 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                const Expanded(
                                  child: SizedBox(),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Card(
                                    color: Colors.black.withOpacity(0.2),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          for (int i = 0; i < places.length; i++)
                                            CustomInkwell(
                                                title: places[i],
                                                textStyle: GoogleFonts.roboto( color: _isHovering[i] ? textHoverColor : textColor,
                                                ),
                                                isVisible: _isSelected[i],
                                                onHover: (value) {
                                                  setState(() {
                                                  value ? _isHovering[i] = true : _isHovering[i] = false;
                                                    
                                                  });
                                                },
                                                onTap: (dynamic) {
                                                  setState(() {
                                                    dynamic = carouselController .animateToPage(i);
                                                  });
                                                })
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: SizedBox(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : const SizedBox()
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
