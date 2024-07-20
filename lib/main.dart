import 'package:flutter/material.dart';
import 'package:note_app1/views/view/note_view.dart';

void main() {
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
      },
      initialRoute: NoteView.id,
    );
  }
}
