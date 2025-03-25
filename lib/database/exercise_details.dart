import 'package:dribble_ui/database/exercises.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<ExerciseDetails> exerciseList = [
  ExerciseDetails(
    title: 'Breathing',
    subtitle: 'Inhale Exhale for Balance',
    //imageUrl: '',
    description: 'Envying others can bind us to our own treasures,'
        'leading to loss as seen in the story of the greedy dog.',
    time: '5 minutes',
    icon: Icons.favorite,
    color: Colors.pink.shade400,
  ),

  ExerciseDetails(
    title: 'Communication',
    subtitle: 'Imagine an audience',
    //imageUrl: '',
    description: "They don't know how nervous you feel. Inhale and Exhale,"
        "and say what you want to say.",
    time: '5 minutes',
    icon: Icons.people_alt_outlined,
    color: Colors.green.shade700,
  ),

  ExerciseDetails(
    title: 'Confidence',
    subtitle: 'Repeat subliminals',
    //imageUrl: '',
    description: "\"You are loved\", \"You are enough\", \"It's okay to make mistakes\","
        "Repeat these till you believe them.",
    time: '5 minutes',
    icon: Icons.favorite,
    color: Colors.redAccent,
  ),

  ExerciseDetails(
    title: 'Journaling',
    subtitle: 'Write down your thoughts',
    //imageUrl: '',
    description: "Write down the main happenings of the day. What brought the strongest emotion?"
        "Why? What were you grateful for?",
    time: '10 minutes',
    icon: CupertinoIcons.book_circle,
    color: Colors.blue.shade600,
  ),
];


