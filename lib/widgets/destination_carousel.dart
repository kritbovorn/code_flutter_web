import 'package:beginner/models/destination_model.dart';
import 'package:beginner/widgets/card_stack_destination_widget.dart';
import 'package:beginner/widgets/section_widget.dart';
import 'package:flutter/material.dart';

class DestinationCarousel extends StatelessWidget {
  const DestinationCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionWidget(
          section: 'Top Destinations',
          seeAll: 'See All',
          onTap: () => debugPrint('See All'),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 12,
            bottom: 12,
          ),
          height: 330.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              final Destination destination = destinations[index];
              
              return CardStackDestinationWidget(destination: destination);
            },
          ),
        ),
      ],
    );
  }
}
