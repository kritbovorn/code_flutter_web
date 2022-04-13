import 'package:beginner/config/palette.dart';
import 'package:beginner/data/data.dart';
import 'package:beginner/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              backgroundColor: Colors.white,
              title: const Text(
                'facebook',
                style: TextStyle(
                  color: Palette.facebookBlue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: -1.2,
                ),
              ),
              centerTitle: false,
              floating: true,
              actions: [
                CircleButton(icon: Icons.search, iconSize: 28, onPressed: () {}),
                CircleButton(
                    icon: MdiIcons.facebookMessenger,
                    iconSize: 28,
                    onPressed: () {}),
              ],
            ),
            SliverToBoxAdapter(
              child: CreatePostContainer(currentUser: currentUser),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
              sliver: SliverToBoxAdapter(
                child: Rooms(onlineUsers: onlineUsers),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
              sliver: SliverToBoxAdapter(
                child: Stories(currentUser: currentUser, stories: stories),
              ),
            ),
            SliverList(  
              delegate: SliverChildBuilderDelegate((context, index) {
                final Post post = posts[index];
    
                return PostContainer(  
                  post: post,
                );
              },
              childCount: posts.length,
            ),
            )
          ],
        ),
      ),
    );
  }
}
