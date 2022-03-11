import 'package:beginner/widgets/top_bar_content.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0.0;
  double _opacity = 0.0;

  scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    _opacity = _scrollPosition < screenSize.height * 0.4 ? _scrollPosition / (screenSize.height * 0.4) : 1;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(  
        preferredSize: Size(screenSize.width, 70),
        child: TopBarContent(opacity: _opacity),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                width: screenSize.width,
                height: screenSize.height * 0.55,
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
