import 'package:flutter/material.dart';
import 'package:note_app1/models/note_model.dart';
import 'package:note_app1/views/widget/item_body/note_item_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return NoteItemBody(noteModel: noteModel);
  }
}
