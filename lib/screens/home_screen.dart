import 'package:beginner/models/destination_model.dart';
import 'package:beginner/widgets/custom_circle_icon_button.dart';
import 'package:beginner/widgets/destination_carousel.dart';
import 'package:beginner/widgets/hotel_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(top: 30),
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
                        selectIndex: _selectedIndex,
                        onTap: () => setState(() => _selectedIndex = e.key),
                      ))
                  .toList(),
            ),
            const DestinationCarousel(),
            const HotelCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) => setState(() => _currentIndex = value),
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: "somethings",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_pizza,
              size: 30,
            ),
            label: 'somethings',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage('assets/images/logo.jpg'),
            ),
            label: 'Me',
          )
        ],
      ),
    );
  }
}
