import 'package:beginner/components/titleHead/title_section_component.dart';
import 'package:flutter/material.dart';

class CategoryComponent extends StatefulWidget {
  // Data
  final List<String> categories;

  const CategoryComponent({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  State<CategoryComponent> createState() => _CategoryComponentState();
}

class _CategoryComponentState extends State<CategoryComponent> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => setState(() => selectedIndex = index),
            child: Column(
              children: [
                TitleSectionComponent(
                  title: widget.categories[index],
                  textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: selectedIndex == index
                          ? Colors.black87
                          : Colors.black26),
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
          );
        },
      ),
    );
  }
}
