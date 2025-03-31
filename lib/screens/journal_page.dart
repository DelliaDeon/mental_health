import 'package:dribble_ui/components/journal_floating_button.dart';
import 'package:dribble_ui/components/note_container.dart';
import 'package:dribble_ui/database/notes_db.dart';
import 'package:dribble_ui/models/notes.dart';
import 'package:flutter/material.dart';

import '../utils/action_buttons.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  // initialize database
  final NotesDatabase _db = NotesDatabase.instance;

  // create a list for storing created notes
  List<NotesModel> _notes = [];

  // load notes
  Future<void> loadNotes() async{
    final notes = await _db.retrieveNotes();
    setState(() {
      _notes = notes;
    });
  }


  // initialize screen to display notes
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadNotes();
  }


  // build screen
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[200],
      floatingActionButton:JournalActionButton(),
      body: SafeArea(
        child: ListView.builder(
          itemCount: _notes.length,
          itemBuilder: (context, index){
            final note = _notes[index];
            final Color color = Color(int.parse(note.color));
            
            return NoteContainer(
              onTap: () async{
                loadNotes();

                //await _db.getNote(note.id);
              },
              color: color,
              title: note.title,
              content: note.content,
              dateTime: note.dateTime,
            );
          }
        )
      ),
    );
  }
}
