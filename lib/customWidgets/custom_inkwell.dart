import 'package:beginner/constant/constant.dart';
import 'package:flutter/material.dart';

class CustomInkwell extends StatefulWidget {
  final String title;
  final TextStyle textStyle;
  final bool isVisible;
  final Function(bool) onHover;
  final Function() onTap;
  

  const CustomInkwell({
    Key? key,
    required this.title,
    required this.textStyle,
    required this.isVisible,
    required this.onHover,
    required this.onTap,
    

  }) : super(key: key);

  @override
  _CustomInkwellState createState() => _CustomInkwellState();
}

class _CustomInkwellState extends State<CustomInkwell> {
  final textKey = GlobalKey();
  double widthOfText = 0.0;


  findWidthOfText(BuildContext context) {
    setState(() {
      widthOfText = textKey.currentContext!.size!.width;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!
        .addPostFrameCallback((timeStamp) => findWidthOfText(context));
  }

  @override
  Widget build(BuildContext context) {

    String menu = widget.title;

    return InkWell(
      hoverColor: Colors.transparent,
      // focusColor: Colors.transparent,
      onHover: (value) {
          widget.onHover(value);
      },
      onTap: () {

        widget.onTap;
        debugPrint(menu);
      },
      child: Column(
        children: [
          Text(
            menu,
            key: textKey,
            style: widget.textStyle,
          ),
          const SizedBox( height: 4, ),
          Visibility(
            maintainAnimation: widget.isVisible,
            maintainState: widget.isVisible,
            maintainSize: widget.isVisible,
            visible: widget.isVisible,
            child: Container(
              color: textHoverColor,
              height: 2,
              width: widthOfText,
            ),
          )
        ],
      ),
    );
  }
}
