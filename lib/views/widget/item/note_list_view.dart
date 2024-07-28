import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/cubits/notes_cubit/note_cubit.dart';
import 'package:note_app1/cubits/notes_cubit/note_states.dart';
import 'package:note_app1/models/note_model.dart';

import 'note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return NoteItem(
                noteModel: notes[index],
              );
            },
          ),
        );
      },
    );
  }
}
