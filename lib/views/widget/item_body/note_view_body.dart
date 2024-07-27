import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/cubits/notes_cubit/note_cubit.dart';

import '../custom/custom_app_bar.dart';
import '../item/note_list_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});
  @override
  State<NoteViewBody> createState() => _NoteViewBody();
}

class _NoteViewBody extends State<NoteViewBody> {
  void intiState() {
    BlocProvider.of<NoteCubit>(context).fetchAllNotes();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 54,
          ),
          CustomAppBar(
            iconData: Icons.search_rounded,
            title: 'Note',
          ),
          NoteListView(),
        ],
      ),
    );
  }
}
