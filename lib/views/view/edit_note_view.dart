import 'package:flutter/material.dart';
import 'package:note_app1/models/note_model.dart';

import '../widget/item_body/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  static String id = 'edit note view';
  final NoteModel noteModel;
  const EditNoteView({super.key, required this.noteModel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        noteModel: noteModel,
      ),
    );
  }
}
