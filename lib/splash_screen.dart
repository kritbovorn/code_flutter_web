import 'dart:async';

import 'package:beginner/dialog_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool _visble = true;

  late AnimationController animationController;
  late Animation<double> animation;

  void navigationToPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DialogScreen(),
        ));
  }

  startTime() async {
    var _duration = const Duration(seconds: 2);
    return Timer(_duration, navigationToPage);
  }

  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeInOut);

    animation.addListener(
      () => setState(() {}),
    );
    animationController.forward();

    setState(
      () => _visble = !_visble,
    );

    debugPrint(animation.value.toString());

    startTime();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Image.asset(
                  'assets/powered_by.png',
                  height: animation.value * 40,
                  fit: BoxFit.scaleDown,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/devs.jpg',
                width: animation.value * 200,
                height: animation.value * 200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
