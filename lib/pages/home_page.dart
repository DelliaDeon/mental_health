import 'package:dribble_ui/pages/exercises_page.dart';
import 'package:dribble_ui/utils/emoji_comp.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final daysDate = DateFormat.yMMMMEEEEd().format(DateTime.now());

    return Scaffold(
      backgroundColor: Colors.pink[200],
      /*bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Exercises'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ]
      ),*/
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // greetings row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi + name
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hi, Delilah!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
            
                          SizedBox(height: 4,),
                          Text(
                            '${daysDate.toString()}',
                            //"18 March, 2025",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
            
                      // Notification
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.pink[300],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(13),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
            
                  // search bar
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.pink[300],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white,),
                        SizedBox(width: 8,),
                        Text(
                          "Search",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
            
                  // how do you feel
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
            
                      Icon(Icons.more_horiz, color: Colors.white,)
                    ],
                  ),
            
                  // four different moods
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // bad
                        EmojiComp(emoji: '😞', text: 'Bad',),
            
                        // fine
                        EmojiComp(emoji: '😐', text: 'Fine',),
            
                        // well
                        EmojiComp(emoji: '🙂', text: 'Well',),
            
                        // excellent
                        EmojiComp(emoji: '😁', text: 'Excellent',),
                      ],
                    ),
                  ),
            
                ],
              ),
            ),

            // exercises
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink[50],
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)
                  ),
                ),
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Center(
                  child: Column(
                    children: [
                      // exercises row
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Exercises",
                              style: TextStyle(
                                color: Colors.pink[600],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Icon(Icons.more_horiz, color: Colors.pink[600],),
                          ],
                        ),
                      ),

                      // listview of exercises
                      Expanded(
                        child: ExercisesPage(),
                        //ExercisesPage(),
                      ),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
