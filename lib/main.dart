import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app1/constant.dart';
import 'package:note_app1/custom_bloc_observer.dart';
import 'package:note_app1/views/view/edit_note_view.dart';
import 'package:note_app1/views/view/note_view.dart';

import 'models/note_model.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = CustomBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kBoxName);
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
        fontFamily: 'Rubik',
      ),
      routes: {
        NoteView.id: (context) => const NoteView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
      initialRoute: NoteView.id,
    );
  }
}
