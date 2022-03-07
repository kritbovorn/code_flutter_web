import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> urlStrings = [
    "https://picsum.photos/300/200?random=1",
    "https://picsum.photos/300/200?random=2",
    "https://picsum.photos/300/200?random=3",
    "https://picsum.photos/300/200?random=4",
    "https://picsum.photos/300/200?random=5",
    "https://picsum.photos/300/200?random=6",
    "https://picsum.photos/300/200?random=7",
  ];
  @override
  Widget build(BuildContext context){
    return ListView(
      children: [
        CarouselSlider(
          items: [

            ...Iterable.generate(urlStrings.length).map((e) => Container(  
              margin: const EdgeInsets.all(6.0),
              decoration: BoxDecoration(  
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(  
                  image: NetworkImage(urlStrings[e]), fit: BoxFit.cover,
                )
              ),
            )),

          ],
          options: CarouselOptions(  
            height: 200,
            enlargeCenterPage: true,
            autoPlay: true,
            // aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            // viewportFraction: 0.8,
          ),
        )
      ],
    );
  }
}