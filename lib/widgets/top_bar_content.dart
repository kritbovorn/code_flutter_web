import 'package:beginner/constant/constant.dart';
import 'package:beginner/customWidgets/custom_inkwell.dart';
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
    return Container(
      color: Colors.white.withOpacity(widget.opacity),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Expanded(
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 2,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text('Author',
                              style: GoogleFonts.raleway(
                                  color: textColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 3)),
                        ),
                      ),
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
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1),
                              isVisible: _isHoverings[e],
                              onHover: (value) {
                                _isHoverings[0] = false;
                                setState(() {
                                  value
                                      ? _isHoverings[e] = true
                                      : _isHoverings[e] = false;
                                });
                              },
                              onTap: () {},
                            )),
                  ],
                ),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(
                  width: 300,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
