import 'package:beginner/constant/constant.dart';
import 'package:beginner/customWidgets/custom_inkwell.dart';
import 'package:flutter/material.dart';

class MobileFloatingQuickAccessBar extends StatelessWidget {
  final List<String> items;
  final List<bool> isHovers;
  final List<bool> isSelecteds;
  final List<IconData> icons;

  const MobileFloatingQuickAccessBar({Key? key, required this.items, required this.isHovers, required this.isSelecteds, required this.icons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: EdgeInsets.only(top: screenSize.height * 0.38),
      child: Row(
        children: [
          const Expanded(
            child: SizedBox(),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                
                for (int i = 0; i < items.length; i++)
                  Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [

                          Expanded(  
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(icons[i], color: textColor,),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomInkwell(
                                    title: items[i],
                                    textStyle: TextStyle(color: isHovers[i] ? textHoverColor : textColor),
                                    isVisible: isSelecteds[i],
                                    onHover: (value) {
                                      value ? isHovers[i] = true : isHovers[i] = false;
                                    },
                                    onTap: (value) {
                                      value ? isSelecteds[i] = true : isSelecteds[i] = false;
                                    }),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
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
