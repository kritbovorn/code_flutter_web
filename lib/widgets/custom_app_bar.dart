import 'package:beginner/assets.dart';
import 'package:beginner/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({Key? key, required this.scrollOffset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        color: Colors.black
            .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
        child: const Responsive(
          mobile: _CustomAppBarMobile(),
          desktop: _CustomAppBarDesktop(),
        ));
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(
            Assets.netflixLogo1,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(title: 'Home', onTap: () => debugPrint('Home')),
                _AppBarButton(
                    title: 'TV Shows', onTap: () => debugPrint('TV Shows')),
                _AppBarButton(
                    title: 'Movies', onTap: () => debugPrint('Movies')),
                _AppBarButton(
                    title: 'Latest', onTap: () => debugPrint('Latest')),
                _AppBarButton(
                    title: 'My List', onTap: () => debugPrint('My Lisft')),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(
                    Icons.search,
                    size: 28.0,
                    color: Colors.white,
                  ),
                  onPressed: () => debugPrint('Icon Search'),
                ),
                _AppBarButton(title: 'Kids', onTap: () => debugPrint('Kids')),
                _AppBarButton(title: 'DVD', onTap: () => debugPrint('DVD')),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.card_giftcard),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => debugPrint('Gift'),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.notifications),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => debugPrint('Notifications'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(
            Assets.netflixLogo0,
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                    title: 'TV Shows', onTap: () => debugPrint('TV Shows')),
                _AppBarButton(
                    title: 'Movies', onTap: () => debugPrint('Movies')),
                _AppBarButton(
                    title: 'My List', onTap: () => debugPrint('My Lisft')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const _AppBarButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
