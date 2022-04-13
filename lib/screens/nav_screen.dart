import 'package:beginner/data/data.dart';
import 'package:beginner/screens/screens.dart';
import 'package:beginner/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    Icons.menu,
  ];

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: DefaultTabController(
          length: _icons.length,
          child: Container(
            color: Colors.white,
            child: Scaffold(
              appBar: Responsive.isDesktop(context)
              ? PreferredSize(  
                preferredSize: Size(screenSize.width, 100),
                child: CustomAppBar(
                  currentUser: currentUser,
                  icons: _icons,
                  selectedIndex: _selectedIndex,
                  onTap: (index) => setState(() => _selectedIndex = index),
                ),
              )

              : null,
              body: IndexedStack(
                index: _selectedIndex,
                children: _screens,
              ),
              bottomNavigationBar: !Responsive.isDesktop(context)
                  ? CustomTabBar(
                      icons: _icons,
                      selectedIndex: _selectedIndex,
                      onTap: (index) => setState(() => _selectedIndex = index),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ),
      ),
    );
  }
}
