import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/cubits/notes_cubit/note_cubit.dart';

import '../custom/custom_app_bar.dart';
import '../item/note_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});
  @override
  State<NotesViewBody> createState() => _NoteViewBody();
}

class _NoteViewBody extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 54,
          ),
          CustomAppBar(
            iconData: Icons.search_rounded,
            title: 'Note',
          ),
          const Expanded(
            child: NoteListView(),
          ),
        ],
      ),
    );
  }
}
