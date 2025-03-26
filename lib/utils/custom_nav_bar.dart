import 'package:dribble_ui/pages/exercises_page.dart';
import 'package:dribble_ui/pages/home_page.dart';
import 'package:dribble_ui/pages/journal_page.dart';
import 'package:dribble_ui/pages/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

void main(){
  runApp(CustomNavBar());
}

class CustomNavBar extends StatefulWidget {
  const CustomNavBar({super.key});

  @override
  State<CustomNavBar> createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  // define a controller
  PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarItems(),
        padding: EdgeInsets.all(12),
        resizeToAvoidBottomInset: true,
        hideNavigationBarWhenKeyboardAppears: true,
        backgroundColor: Colors.pink.shade200,
        isVisible: true,
        navBarStyle: NavBarStyle.style7,
        animationSettings: NavBarAnimationSettings(
          navBarItemAnimation: ItemAnimationSettings(
            duration: Duration(milliseconds: 400),
            curve: Curves.ease,
          ),
      
          screenTransitionAnimation: ScreenTransitionAnimationSettings(
            animateTabTransition: true,
            duration: Duration(milliseconds: 200),
            screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
          )
        ),
        confineToSafeArea: true,
        navBarHeight: kBottomNavigationBarHeight,
      ),
    );
  }
}

List<Widget> _buildScreens(){
  return [
    HomePage(),
    ExercisesPage(),
    JournalPage(),
    SettingsPage(),
  ];
}

List<PersistentBottomNavBarItem> _navBarItems(){
  return[
    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.home, color: Colors.white,),
      title: 'Home',
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      activeColorPrimary: CupertinoColors.systemPink,
      activeColorSecondary: Colors.white,
      inactiveColorPrimary: Colors.pink.shade100,
      //scrollController: ,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: "/",
        routes:{
          "/": (context) => HomePage(),
          "/exercises": (context) => ExercisesPage(),
          "/journal": (context) => JournalPage(),
          "/settings": (context) => SettingsPage(),
        },
      ),
    ),

    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.heart_circle_fill, color: Colors.white,),
      title: 'Exercise',
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      activeColorPrimary: CupertinoColors.systemPink,
      activeColorSecondary: Colors.white,
      inactiveColorPrimary: Colors.pink.shade100,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
        initialRoute: "/",
        routes: {
          "/": (context) => HomePage(),
          "/exercises": (context) => ExercisesPage(),
          "/journal": (context) => JournalPage(),
          "/settings": (context) => SettingsPage(),
        }
      ),
    ),

    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.book_circle_fill, color: Colors.white,),
      title: 'Journal',
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      activeColorPrimary: CupertinoColors.systemPink,
      activeColorSecondary: Colors.white,
      inactiveColorPrimary: Colors.pink.shade100,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/": (context) => HomePage(),
            "/exercises": (context) => ExercisesPage(),
            "/journal": (context) => JournalPage(),
            "/settings": (context) => SettingsPage(),
          }
      ),
    ),

    PersistentBottomNavBarItem(
      icon: Icon(CupertinoIcons.settings_solid, color: Colors.white,),
      title: 'Settings',
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      activeColorPrimary: CupertinoColors.systemPink,
      activeColorSecondary: Colors.white,
      inactiveColorPrimary: Colors.pink.shade100,
      routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: "/",
          routes: {
            "/": (context) => HomePage(),
            "/exercises": (context) => ExercisesPage(),
            "/journal": (context) => JournalPage(),
            "/settings": (context) => SettingsPage(),
          }
      ),
    ),
  ];
}
