import 'package:beginner/constants.dart';
import 'package:flutter/material.dart';

class CategoryComponent extends StatefulWidget {
  const CategoryComponent({Key? key}) : super(key: key);

  @override
  State<CategoryComponent> createState() => _CategoryComponentState();
}

class _CategoryComponentState extends State<CategoryComponent> {
  List<String> categories = [
    "Hand-Bag",
    "Jewellery",
    "Footwear",
    "Dressess",
    "Shoes",
    "Helmet"
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: SizedBox(
        height: 45,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () => setState(() {
                selectedIndex = index;
              }),
              child: AnimatedContainer(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                duration: const Duration(seconds: 3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      categories[index],
                      style: TextStyle(
                        color: selectedIndex == index
                            ? kTextColor
                            : kTextLightColor,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 3,
                      width: 30,
                      color: selectedIndex == index
                          ? Colors.black
                          : Colors.transparent,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
