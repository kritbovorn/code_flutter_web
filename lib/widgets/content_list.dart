import 'package:beginner/models/models.dart';
import 'package:flutter/material.dart';

class ContentList extends StatelessWidget {
  final String title;
  final List<Content> contentLists;
  final bool? isOriginals;
  const ContentList(
      {Key? key,
      required this.title,
      required this.contentLists,
      this.isOriginals = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
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
          ),
          SizedBox(
            height: isOriginals! ? 500.0 : 220.0,
            child: ListView.builder(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              scrollDirection: Axis.horizontal,
              itemCount: contentLists.length,
              itemBuilder: (BuildContext context, int index) {
                final Content content = contentLists[index];
                return GestureDetector(
                  onTap: () => debugPrint(content.name),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    height: isOriginals! ? 400.0 : 200.0,
                    width: isOriginals! ? 200.0 : 130.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(content.imageUrl),
                      fit: BoxFit.cover,
                    )),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
