import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../screens/destination_screen.dart';

class CardStackDestinationWidget extends StatelessWidget {
  final dynamic destination;
  final double mainWidth;
  final double mediumWidth;
  final double smallWidth;

  const CardStackDestinationWidget(
      {Key? key,
      required this.destination,
      required this.mainWidth,
      required this.mediumWidth,
      required this.smallWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DestinationScreen(destination: destination),)),
      child: Container(
        margin: const EdgeInsets.all(10.0),
        width: mainWidth,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 15.0,
              child: Container(
                height: 140,
                width: mediumWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 2),
                        blurRadius: 2,
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${destination.activities.length} activities.',
                        style: const TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        destination.description,
                        style: const TextStyle(
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 2),
                      blurRadius: 2,
                    ),
                  ]),
              child: Stack(
                children: [
                  Hero(
                    tag: destination.imageUrl,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                        width: smallWidth,
                        height: 210,
                        image: AssetImage(destination.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10.0,
                    bottom: 10.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destination.city,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              FontAwesomeIcons.locationArrow,
                              size: 10.0,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 6.0,
                            ),
                            Text(
                              destination.country,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
