import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool bookmarked = false;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    );
  }

  @override
  void dispose() {
    super.dispose();

    _controller.dispose();
  }

  action() {
    if (bookmarked == false) {
      _controller.forward();
      bookmarked = true;
    } else {
      _controller.reverse();
      bookmarked = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => action(),
          child: Lottie.network(
            'https://assets6.lottiefiles.com/packages/lf20_teutzxdt.json',
            // controller: _controller
          ),
        ),
      ),
    );
  }
}
