import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {

final Widget desktopScreen;
final Widget? tabletScreen;
final Widget? mobileScreen;

static bool isSmallScreen(BuildContext context) {
  return MediaQuery.of(context).size.width < 800;
}

static bool isTabletScreen(BuildContext context) {
  return MediaQuery.of(context).size.width >= 800 && MediaQuery.of(context).size.width <= 1200;
}

static bool isLargeScreen(BuildContext context) {
  return MediaQuery.of(context).size.width > 1200;
}

const ResponsiveWidget({ Key? key, required this.desktopScreen, required this.tabletScreen, required this.mobileScreen }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight < 800) {
        return mobileScreen ?? desktopScreen;
      } else if (constraints.maxWidth >= 800 && constraints.maxWidth <= 1200) {
        return tabletScreen ?? desktopScreen;
      } else {
        return desktopScreen;
      }
    },);
  }
}