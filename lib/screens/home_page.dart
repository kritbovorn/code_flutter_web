import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [

              SizedBox(
                width: screenSize.width,
                height: screenSize.height * 0.45,
                child: Image.asset(
                  "assets/images/cover.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}
