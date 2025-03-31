import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // date + mood
              Row(
                children: [
                  // date
          
                  // mood from homepage
                ],
              ),
              
              Expanded(child: Column()),
              
              Container(
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  children: [
                    // voice
                    
                    // text styles
                    
                    // add clips
                    
                    // save
                  ],
                ),
              )
            ],
          ),
        ),
      ),

    );
  }
}
