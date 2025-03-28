import 'package:sqflite/sqflite.dart';

class NotesDatabase{
 static Database? _notesdb;

 // initialiaze database
 static final NotesDatabase instance = NotesDatabase.constructor();
 NotesDatabase.constructor();

 // get database values
 /*Future<Database> get database async{
  if (_notesdb != null) return _notesdb!;
  _notesdb = await getDatabase();
  return _notesdb;
 }

 // get database
 Future<Database> getDatabase() async{

 }*/

}