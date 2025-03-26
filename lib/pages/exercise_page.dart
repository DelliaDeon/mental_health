import 'package:dribble_ui/database/exercise_details.dart';
import 'package:dribble_ui/database/exercises.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExercisePage extends StatefulWidget {
  // initialize an exercise
  final ExerciseDetails exercise;

  const ExercisePage({
    super.key, required this.exercise
  });

  @override
  State<ExercisePage> createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // appbar
              CircleAvatar(
                backgroundColor: Colors.white54,
                radius: 25,
                child: Center(
                  child: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              // duration + subtitle
              Column(
                children: [
                  Center(
                    child: Text(
                      widget.exercise.time,
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  //SizedBox(height: 5,),

                  // short description/ title
                  Text(widget.exercise.subtitle,
                    style: TextStyle(
                      color: Colors.pink.shade800,
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),

              // image
              Expanded(
                child: Center(
                  child: Icon(widget.exercise.icon, size: 100,)
                ),
              ),

              // Exercise Title + description
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.exercise.title,
                    style: TextStyle(
                      color: Colors.pink[800],
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10,),

                  // description
                  Text(widget.exercise.description,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(height: 30,),
                ],
              ),

            ],
          ),
        )
      ),
    );
  }
}
