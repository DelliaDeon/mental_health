import 'package:flutter/material.dart';

import '../utils/list_tile.dart';

void main(){
  runApp(ExercisesPage());
}


class ExercisesPage extends StatelessWidget {
  const ExercisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: [
                MyListTile(
                  icon: Icons.favorite,
                  title: 'Breathing Exercise',
                  subtitle: 'Do for 4 minutes',
                  color: Colors.pink[400],
                ),
          
                MyListTile(
                  icon: Icons.person,
                  title: 'Communication Practice',
                  color: Colors.green[700],
                  subtitle: 'Improve communication skills',
                ),
          
                MyListTile(
                  color: Colors.blue[700],
                  icon: Icons.star,
                  title: 'Confidence Improvement',
                  subtitle: 'Subliminals for 10 minutes',
                ),
          
                MyListTile(
                  color: Colors.redAccent,
                  icon: Icons.monitor_heart_outlined,
                  title: 'Journalling',
                  subtitle: 'Write down your thoughts',
                ),
              ],
            ),
          ),
        ),
    );
  }
}
