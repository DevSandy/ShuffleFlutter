import 'package:flutter/material.dart';
import 'package:qvid/BottomNavigation/Explore/explore_page.dart';
import 'package:qvid/BottomNavigation/Home/home_page.dart';
import 'package:qvid/BottomNavigation/MyProfile/my_profile_page.dart';
import 'package:qvid/Locale/locale.dart';
import 'package:qvid/Multiplex/multiplex_main.dart';
import 'package:qvid/BottomNavigation/Notifications/notification_messages.dart';
import 'package:qvid/Theme/colors.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    HomePage(),
    ExplorePage(),
    Multiplex_Main_Screen(),
    NotificationMessages(),
    MyProfilePage(),
  ];

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context)!;
    final List<BottomNavigationBarItem> _bottomBarItems = [
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/icons/ic_home.png')),
        activeIcon: ImageIcon(AssetImage('assets/icons/ic_homeactive.png')),
        label: locale.home,
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/icons/ic_explore.png')),
        activeIcon: ImageIcon(AssetImage('assets/icons/ic_exploreactive.png')),
        label: locale.explore,
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/applogo.png')),
        activeIcon: ImageIcon(AssetImage('assets/applogo.png')),
        label: 'Multiplex',
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/icons/ic_notification.png')),
        activeIcon:
            ImageIcon(AssetImage('assets/icons/ic_notificationactive.png')),
        label: locale.notification,
      ),
      BottomNavigationBarItem(
        icon: ImageIcon(AssetImage('assets/icons/ic_profile.png')),
        activeIcon: ImageIcon(AssetImage('assets/icons/ic_profileactive.png')),
        label: locale.profile,
      ),
    ];
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _children[_currentIndex],
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              currentIndex: _currentIndex,
              backgroundColor: transparentColor,
              elevation: 0.0,
              type: BottomNavigationBarType.fixed,
              iconSize: 22.0,
              selectedItemColor: secondaryColor,
              selectedFontSize: 12,
              unselectedFontSize: 10,
              unselectedItemColor: secondaryColor,
              items: _bottomBarItems,
              onTap: onTap,
            ),
          ),
        ],
      ),
    );
  }
}
