import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app1/constant.dart';
import 'package:note_app1/views/view/edit_note_view.dart';
import 'package:note_app1/views/view/note_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kBoxName);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'assets/fonts/rubik/Rubik-BoldItalic.ttf',
      ),
      routes: {
        NoteView.id: (context) => const NoteView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
      initialRoute: NoteView.id,
    );
  }
}
