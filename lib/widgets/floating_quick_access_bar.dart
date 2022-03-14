import 'package:beginner/constant/constant.dart';
import 'package:beginner/customWidgets/custom_inkwell.dart';
import 'package:beginner/utils/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  final Size screenSize;

  const FloatingQuickAccessBar({Key? key, required this.screenSize})
      : super(key: key);

  @override
  _FloatingQuickAccessBarState createState() => _FloatingQuickAccessBarState();
}

class _FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {
  final List<bool> _isHoverings = [
    false,
    false,
    false,
    false,
  ];
  List<Widget> rowElements = [];
  List<String> items = ["History", "Science", "Philosophy", "Novels"];
  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny,
  ];

  List<Widget> generatedRowElements() {
    rowElements.clear();

    for (int i = 0; i < items.length; i++) {
      Widget elementTile = CustomInkwell(
        title: items[i],
        textStyle: GoogleFonts.roboto(
            color: _isHoverings[i] ? textHoverColor : Colors.white,
            fontSize: ResponsiveWidget.isSmallScreen(context) ? 14 : 18),
        isVisible: false,
        onHover: (value) {
          setState(() {
            value ? _isHoverings[i] = true : _isHoverings[i] = false;
          });
        },
        onTap: (dynamic) {},
      );

      Widget spacer = const SizedBox(
        height: 24,
        child: VerticalDivider(
          width: 1,
          color: textHoverColor,
          thickness: 1,
        ),
      );

      rowElements.add(elementTile);

      if (i < items.length - 1) {
        rowElements.add(spacer);
      }
    }

    return rowElements;
  }

  @override
  Widget build(BuildContext context) {

    var isLarge = ResponsiveWidget.isLargeScreen(context);

    return Padding(
      padding: EdgeInsets.only(top: widget.screenSize.height * 0.50),
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            const Expanded(
              child: SizedBox(),
            ),
            Expanded(
              flex: 4,
              child:  Card(
                color: Colors.black,
                child: Padding(
                  padding: EdgeInsets.symmetric( vertical: ResponsiveWidget.isLargeScreen(context) ? 14 : 12),
                  child: isLarge 
                  ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: generatedRowElements(),
                  )
                  : Column(  
                    children: generatedRowElements(),
                  )
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
