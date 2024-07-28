import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app1/views/view/notes_view.dart';
import 'package:note_app1/views/widget/helper/constant.dart';
import 'package:note_app1/views/widget/helper/custom_bloc_observer.dart';

import 'cubits/notes_cubit/note_cubit.dart';
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
    return BlocProvider(
      create: (context) => NoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Rubik',
        ),
        routes: {
          NotesView.id: (context) => const NotesView(),
          //EditNoteView.id: (context) =>  EditNoteView(noteModel: null,),
        },
        initialRoute: NotesView.id,
      ),
    );
  }
}
