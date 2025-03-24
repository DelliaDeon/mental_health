import 'package:dribble_ui/pages/exercise_page.dart';
import 'package:dribble_ui/pages/exercises_page.dart';
import 'package:dribble_ui/pages/home_page.dart';
import 'package:dribble_ui/pages/journal_page.dart';
import 'package:dribble_ui/pages/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DribbleUI());
}

class DribbleUI extends StatefulWidget {
  const DribbleUI({super.key});

  @override
  State<DribbleUI> createState() => _DribbleUIState();
}

class _DribbleUIState extends State<DribbleUI> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    ExercisesPage(),
    JournalPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState((){
              _currentIndex = index;
            });
          },
          items: [
            // home
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
              backgroundColor: Colors.pink,
            ),

            // exercises
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: 'Exercises',
              backgroundColor: Colors.pink,
            ),

            // journal
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.book),
              label: 'Journal',
              backgroundColor: Colors.pink,
            ),

            // settings
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings_solid),
              label: 'Settings',
              backgroundColor: Colors.pink,
            ),
          ],
        ),
      ),
      /*initialRoute: "/",

      routes: {
        "/": (context) => HomePage(),
        "/exercise": (context) => ExercisePage(),
        "/exercises": (context) => ExercisesPage(),
        "/journal": (context) => JournalPage(),
        "/settings": (context) => SettingsPage(),
      },*/
    );
  }
}
