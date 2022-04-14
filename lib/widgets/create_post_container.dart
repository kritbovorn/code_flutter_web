import 'package:beginner/models/model.dart';
import 'package:beginner/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isDesktop = Responsive.isDesktop(context);

    return Card(
      margin: EdgeInsets.symmetric(horizontal: isDesktop ? 5.0 : 0.0),
      elevation: isDesktop ? 1.0 : 0.0,
      shape: isDesktop
          ? RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))
          : null,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(
                  imageUrl: currentUser.imageUrl,
                ),
                const SizedBox(
                  width: 8,
                ),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'What\'s on your mind?',
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10,
              thickness: 0.5,
            ),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.videocam,
                      color: Colors.red,
                    ),
                    label: const Text(
                      'Live',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const VerticalDivider(
                    width: 8,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: const Text(
                      'Photo',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  const VerticalDivider(
                    width: 8,
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: const Text(
                      'Room',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
