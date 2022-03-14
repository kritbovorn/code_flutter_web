import 'package:beginner/utils/responsive_widget.dart';
import 'package:beginner/widgets/bottom_bar_column.dart';
import 'package:beginner/widgets/info_text.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isLarge = ResponsiveWidget.isLargeScreen(context);

    return Padding(
      padding: const EdgeInsets.only(top: 85),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 25),
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Row(
            children: [
              const Expanded(
                child: SizedBox(),
              ),
              Expanded(
                flex: isLarge ? 10 : 18,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                BottomBarColumn(
                                    heading: 'About',
                                    s1: 'Contact Us',
                                    s2: 'About Us',
                                    s3: 'Careers'),
                                BottomBarColumn(
                                    heading: 'HELP',
                                    s1: 'Payment',
                                    s2: 'Cancelation',
                                    s3: 'FAQ.'),
                                BottomBarColumn(
                                    heading: 'SOCIAL',
                                    s1: 'Youtube',
                                    s2: 'Facebool',
                                    s3: 'Twitter'),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 0.5,
                          height: 150,
                          color: Colors.white,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Column(
                              children: const [
                                InfoText(
                                    type: 'Email',
                                    title: 'kritbovorn@gmail.com'),
                                SizedBox(
                                  height: 15,
                                ),
                                InfoText(
                                    type: 'Address',
                                    title:
                                        '19/13 หมู่บ้านพฤกษาวิลล์ 68 ซ.จอมทอง 19 ถ.จอมทอง เขตจอมทอง กรุงเทพมหานคร 10150'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 0.5,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 34),
                      child: Text(
                        'Copyright © 2021 | Kritbovorn Taweeyossak',
                        style: TextStyle(color: Colors.white, fontSize: 14),
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
        ),
      ),
    );
  }
}
