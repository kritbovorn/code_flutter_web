import 'package:beginner/models/models.dart';
import 'package:flutter/material.dart';

class Previews extends StatelessWidget {
  final String title;
  final List<Content> contentLists;

  const Previews({Key? key, required this.title, required this.contentLists})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 165.0,
          child: ListView.builder(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
            scrollDirection: Axis.horizontal,
            itemCount: contentLists.length,
            itemBuilder: (BuildContext context, int index) {
              final Content content = contentLists[index];
              return GestureDetector(
                onTap: () => debugPrint(content.name),
                child: Stack(
                  // alignment: Alignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(content.imageUrl),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                        border: Border.all(color: content.color!, width: 4),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16.0),
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [
                              Colors.black87,
                              Colors.black12,
                              Colors.transparent
                            ],
                            stops: [
                              0,
                              0.25,
                              1.0
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                        shape: BoxShape.circle,
                        border: Border.all(color: content.color!, width: 4),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: SizedBox(
                        height: 60,
                        child: Image.asset(content.titleImageUrl!),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
