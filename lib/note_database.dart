
import 'package:isar/isar.dart';
import 'package:isar_notes_db/note.dart';
import 'package:path_provider/path_provider.dart';

class NoteDatabase{
  static late Isar isar;
  //initilize
  static Future<void>initialize() async{
    final dir=await getApplicationDocumentsDirectory();
    isar= await Isar.open([NoteSchema], directory: dir.path);

  }
  // list of notes
  final List<Note> currentNotes =[];
  //crate
  //read
  //update
  //delete
}




































































// import 'dart:ffi';

// import 'package:flutter/foundation.dart';
// import 'package:isar/isar.dart';
// import 'package:isar_notes_db/note.dart';

// import 'package:path_provider/path_provider.dart';

// class NoteDatabase extends ChangeNotifier{
//   static late Isar isar;

//   //initialize
//  static Future<Void>initialize() async{
// final dir=await getApplicationDocumentsDirectory();
// isar = await Isar.open([NoteSchema], directory: dir.path);
//  } 
//  //list of notes
//   final List<Note>currentNotes =[];

//   //creat
//   Future<void>addNote(String textFromUser) async{
//     //create a new object
//     final newNote = Note()..text=textFromUser;
//     //save to database
//     await isar.writeTxn(() => isar.notes.put(newNote));
//     // re-read from database
// fetchNotes();
//   }
//   //read
//   Future<void> fetchNotes() async{
//     List<Note>fetchNotes=await isar.notes.where().findAll();
//     currentNotes.clear();
//     currentNotes.addAll(fetchedNotes);
//     notifyListeners();

//   }
//   //update
//   Future<void>updateNote(int id, String newText)async{
//     final existingNote =await isar.notes.get(id);
//     if(existingNote!= null){
//       existingNote.text= newText;
//       await isar.writeTxn(() => isar.notes.put(existingNote));
//       await fetchNotes();
//     }
//   }
//   //delete

// Future<void> deleteNote(int id) async{
//   await isar.writeTxn(() => isar.notes.delete(id));
//   await fetchNotes();
// }

// }