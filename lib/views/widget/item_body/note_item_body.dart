import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/cubits/notes_cubit/note_cubit.dart';

import '../../../models/note_model.dart';
import '../../view/edit_note_view.dart';

class NoteItemBody extends StatelessWidget {
  const NoteItemBody({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(
                noteModel: noteModel,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        padding: const EdgeInsets.only(
          top: 24,
          left: 16,
          bottom: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(noteModel.color).withOpacity(.7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(8),
              title: Text(
                noteModel.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'assets/fonts/rubik/Rubik-ExtraBold.ttf',
                  fontWeight: FontWeight.w500,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  right: 16,
                ),
                child: Text(
                  noteModel.subTitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 20,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  noteModel.delete();
                  BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  Icons.delete_outline,
                  color: Colors.black,
                  size: 32,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: Text(
                noteModel.dateTime,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
