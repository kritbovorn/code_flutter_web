import 'package:beginner/constant/constant.dart';
import 'package:beginner/customWidgets/custom_inkwell.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuDraw extends StatefulWidget {
  const MenuDraw({Key? key}) : super(key: key);

  @override
  State<MenuDraw> createState() => _MenuDrawState();
}

class _MenuDrawState extends State<MenuDraw> {
  final List<String> menuItems = ["Home", "About", "Product", "Contact Us"];
  List<Widget> menuElements = [];

  final List<bool> _isHovers = [false, false, false, false];
  final List<bool> _isSelected = [false, false, false, false];

  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny,
  ];

  List<Widget> generatedMenuItems() {
    menuElements.clear();

    for (int i = 0; i < menuItems.length; i++) {
      Widget element = CustomInkwell(
        title: menuItems[i],
        textStyle: GoogleFonts.roboto(
            color: _isHovers[i] ? textHoverColor : textColor),
        isVisible: _isSelected[i],
        onHover: (value) {
          setState(() {
            value ? _isHovers[i] = true : _isHovers[i] = false;
          });
        },
        onTap: (value) {
          setState(() {
            value ? _isSelected[i] = true : _isSelected[i] = false;
          });
        },
      );

      Widget spacer = const Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Divider(
          color: textColor,
          thickness: 0.5,
        ),
      );

      menuElements.add(element);
      if (i < menuItems.length - 1) {
        menuElements.add(spacer);
      }
    }

    return menuElements;
  }

  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 34, horizontal: 12),
        color: backgroundDrawerColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 32),
              child: SizedBox(
                width: 80,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset('assets/images/logo.jpg'),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: generatedMenuItems(),
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Copyright © 2022 | Kritbovorn',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
