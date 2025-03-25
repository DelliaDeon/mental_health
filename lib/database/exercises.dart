import 'package:flutter/material.dart';

class ExerciseDetails{
  final String title;
  final String subtitle;
  //final String imageUrl;
  final String description;
  final String time;
  final Color color;
  final IconData icon;


  ExerciseDetails({
    required this.title,
    required this.subtitle,
    //required this.imageUrl,
    required this.description,
    required this.time,
    required this.color,
    required this.icon,
  });
}
