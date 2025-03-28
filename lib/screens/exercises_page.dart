import 'package:dribble_ui/database/exercise_details.dart';
import 'package:dribble_ui/database/exercise_values.dart';
import 'package:dribble_ui/pages/exercise_page.dart';
import 'package:flutter/material.dart';

import '../utils/list_tile.dart';

void main(){
  runApp(ExercisesPage());
}


class ExercisesPage extends StatefulWidget {
  ExercisesPage({super.key});

  @override
  State<ExercisesPage> createState() => _ExercisesPageState();
}

class _ExercisesPageState extends State<ExercisesPage> {
  List exercises = exerciseList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink[50],
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView.builder(
              itemCount: exercises.length,
              itemBuilder: (context, index) {
                return MyListTile(
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => ExercisePage(exercise: exercises[index],),
                      ),
                    );
                  },
                  color: exercises[index].color,
                  icon: exercises[index].icon,
                  title: exercises[index].title,
                  subtitle: exercises[index].subtitle,
                );
              }
            ),
          ),
    );
  }
}
