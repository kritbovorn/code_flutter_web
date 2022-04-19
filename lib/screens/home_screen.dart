import 'package:beginner/models/destination_model.dart';
import 'package:beginner/widgets/custom_circle_icon_button.dart';
import 'package:beginner/widgets/destination_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30),
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 60),
              child: Text(
                'What do you would like to find?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: icons
                  .asMap()
                  .entries
                  .map((e) => CustomCircleIconButton(
                        icon: e.value,
                        index: e.key,
                        selectIndex: selectedIndex,
                        onTap: () => setState(() => selectedIndex = e.key),
                      ))
                  .toList(),
            ),
            const DestinationCarousel(),
          ],
        ),
      ),
    );
  }
}
