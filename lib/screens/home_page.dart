import 'package:beginner/constant/constant.dart';
import 'package:beginner/utils/responsive_widget.dart';
import 'package:beginner/widgets/bottom_bar.dart';
import 'package:beginner/widgets/featured_heading.dart';
import 'package:beginner/widgets/featured_tile.dart';
import 'package:beginner/widgets/floating_quick_access_bar.dart';
import 'package:beginner/widgets/main_carousel.dart';
import 'package:beginner/widgets/main_heading.dart';
import 'package:beginner/widgets/menu_draw.dart';
import 'package:beginner/widgets/top_bar_content.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0.0;
  double _opacity = 0.0;

  scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var isLarge = ResponsiveWidget.isLargeScreen(context);

    _opacity = _scrollPosition < screenSize.height * 0.4
        ? _scrollPosition / (screenSize.height * 0.4)
        : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      appBar: isLarge
          ? PreferredSize(
              preferredSize: Size(screenSize.width, 70),
              child: TopBarContent(opacity: _opacity),
            )
          : AppBar(
              elevation: 0,
              backgroundColor: Colors.black.withOpacity(_opacity),
              title: Text('Author',
                  style: GoogleFonts.raleway(
                      color: textColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1)),
              iconTheme: const IconThemeData(color: textHoverColor),
            ),
      drawer: const MenuDraw(),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: screenSize.width,
                  height: screenSize.height * 0.55,
                  child: Image.asset(
                    "assets/images/cover.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                FloatingQuickAccessBar(screenSize: screenSize),
              ],
            ),
            const FeaturedHeading(),
            FeaturedTile(),
            const MainHeading(),
            const MainCarousel(),
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
