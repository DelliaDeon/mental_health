import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/notes.dart';

class NotesDatabase{
 static Database? _notesdb;

 // initialiaze database
 static final NotesDatabase instance = NotesDatabase.constructor();
 NotesDatabase.constructor();

 // get database values
 Future<Database> get database async{
  if (_notesdb != null) return _notesdb!;
  _notesdb = await getDatabase();
  return _notesdb!;
 }

 // get database
 Future<Database> getDatabase() async{
  final database = openDatabase(
   // define path and version
    join(await getDatabasesPath(),'notes_db.db'),
    version: 1,

   // create table
   onCreate: (db, version){
     db.execute(
      '''CREATE TABLE notes(
       id INT PRIMARY KEY AUTOINCREMENT,
       title TEXT,
       content TEXT NOT NULL,
       color TEXT,
       dateTime TEXT,
      )''',
     );
   },
  );
  return database;
 }

 // add note
 Future<void> addNote(NotesModel note) async{
  final db = await database;
  await db.insert('notes', note.toMap());
 }

 // retrieve all notes
 Future<List<NotesModel>> retrieveNotes() async{
   final db = await database;
   final data = await db.query("notes");

   return List.generate(
     data.length,
     (i) => NotesModel.fromMap(data[i])
   );
 }

 // get a specific note
 Future<NotesModel> getNote(int id) async{
  final db = await database;
  final data = await db.query('notes');
  return NotesModel.fromMap(data[id]);
 }

 // update note
 Future<void> updateNote(NotesModel note) async{
  final db = await database;
  db.update(
    'notes', note.toMap(),
    where: "id = ?",
    whereArgs: [note.id],
  );
 }

 // delete note
 Future<void> deleteNote(int id) async{
  final db = await database;
  db.delete(
     'notes',
     where: "id = ?",
     whereArgs: [id]
  );
 }

}