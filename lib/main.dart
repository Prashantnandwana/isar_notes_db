import 'package:flutter/material.dart';
import 'package:isar_notes_db/note_database.dart';
import 'package:isar_notes_db/notes_page.dart';
import 'package:provider/provider.dart';

void main() async{
  // initalize note isar databasr
  WidgetsFlutterBinding.ensureInitialized();
  await NoteDatabase.initialize(); 
  runApp(
    ChangeNotifierProvider(create: (context) => NoteDatabase(),
    child: const MyApp(),)
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NotesPage(),
    );
  }
}