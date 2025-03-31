// button to create new journal page.

import 'package:dribble_ui/pages/add_edit_note.dart';
import 'package:flutter/material.dart';
import '../utils/action_buttons.dart';

class JournalActionButton extends StatefulWidget {
  const JournalActionButton({super.key});

  @override
  State<JournalActionButton> createState() => _JournalActionButtonState();
}

class _JournalActionButtonState extends State<JournalActionButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async{
        showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text('Create New Journal'),
                actions: [
                  Row(
                    children: [
                      // create
                      ActionButtons(
                        onTap: () async{
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddEditNotePage()
                            ),
                          );
                        },
                        text: 'Okay',
                      ),

                      // cancel
                      ActionButtons(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        text: 'Cancel'
                      ),
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
    );
  }
}
