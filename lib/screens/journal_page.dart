import 'package:flutter/material.dart';

import '../utils/action_buttons.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text('Create New Journal'),
                actions: [
                  Row(
                    children: [
                      ActionButtons(text: 'Okay',),
                      ActionButtons(text: 'Cancel')
                    ],
                  )
                ],
              );
            }
          );
        },
        backgroundColor: Colors.pink[50],
        child: Icon(
          Icons.add,
          color: Colors.pink[600],
          size: 37,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
