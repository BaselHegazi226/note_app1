import 'package:flutter/material.dart';
import 'package:note_app1/models/note_model.dart';
import 'package:note_app1/views/view/edit_note_view.dart';

import '../item_body/note_item_body.dart';

class NoteItem extends StatelessWidget {
  final NoteModel noteModel;
  const NoteItem({
    super.key,
    required this.noteModel,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: NoteItemBody(noteModel: noteModel),
    );
  }
}
