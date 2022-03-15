import 'package:beginner/constant/constant.dart';
import 'package:beginner/customWidgets/custom_inkwell.dart';
import 'package:beginner/utils/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBarContent extends StatefulWidget {
  final double opacity;

  const TopBarContent({Key? key, required this.opacity}) : super(key: key);

  @override
  _TopBarContentState createState() => _TopBarContentState();
}

class _TopBarContentState extends State<TopBarContent> {
  final List<bool> _isHoverings = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  final List<String> _menuItems = ["Home", "About Us", "History", "Contact"];

  @override
  Widget build(BuildContext context) {
    var isLarge = ResponsiveWidget.isLargeScreen(context);

    return Container(
      color: Colors.black.withOpacity(widget.opacity),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  children: [
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: isLarge ? 1 : 2,
                      child: Text('Author',
                          style: GoogleFonts.raleway(
                              color: textColor,
                              fontSize: isLarge ? 34 : 30,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1)),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ...Iterable.generate(_menuItems.length)
                        .map((e) => CustomInkwell(
                              title: _menuItems[e],
                              textStyle: GoogleFonts.roboto(
                                  color: _isHoverings[e]
                                      ? textHoverColor
                                      : textColor,
                                  fontSize: isLarge ? 20 : 17,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0),
                              isVisible: _isHoverings[e],
                              onHover: (value) {
                                _isHoverings[0] = false;
                                setState(() {
                                  value
                                      ? _isHoverings[e] = true
                                      : _isHoverings[e] = false;
                                });
                              },
                              onTap: (dynamic) {},
                            )),
                  ],
                ),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
