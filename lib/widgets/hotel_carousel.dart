import 'package:beginner/models/hotel_model.dart';
import 'package:beginner/widgets/card_stack_destination_widget.dart';
import 'package:beginner/widgets/section_widget.dart';
import 'package:flutter/material.dart';

class HotelCarousel extends StatelessWidget {
  const HotelCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWidget(
            section: "Exclusive Hotels",
            seeAll: "See All",
            onTap: () => debugPrint('See All')),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12.0),
          height: 330,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              final Hotel hotel = hotels[index];

              return CardStackDestinationWidget(
                destination: hotel,
                mainWidth: 340,
                mediumWidth: 320,
                smallWidth: 300,
              );
            },
          ),
        )
      ],
    );
  }
}
