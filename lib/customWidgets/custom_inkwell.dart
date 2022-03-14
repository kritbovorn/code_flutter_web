import 'package:beginner/constant/constant.dart';
import 'package:flutter/material.dart';

class CustomInkwell extends StatefulWidget {
  final String title;
  final TextStyle textStyle;
  final bool isVisible;
  final Function(bool) onHover; //  รอ รับค่า จาก Parent
  final Function(dynamic) onTap; //  รอ รับค่า จาก Parent

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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        onHover: (value) {
          widget.onHover(value); //   ทำหน้าที่ ส่ง parameter to parent
        },
        onTap: () {
          widget.onTap(dynamic); //   ทำหน้าที่ ส่ง parameter to parent
          debugPrint(menu);
        },
        child: Column(
          children: [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                menu,
                key: textKey,
                style: widget.textStyle,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Visibility(
              maintainAnimation: widget.isVisible,
              maintainState: widget.isVisible,
              maintainSize: widget.isVisible,
              visible: widget.isVisible,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 300),
                opacity: widget.isVisible ? 1 : 0,
                child: Container(
                  height: 2,
                  width: widthOfText,
                  decoration: const BoxDecoration(
                      color: textHoverColor,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
