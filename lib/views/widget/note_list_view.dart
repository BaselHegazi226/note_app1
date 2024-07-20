import 'package:flutter/material.dart';
import 'package:note_app1/views/view/edit_view.dart';

import 'note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return NoteItem(
            onPressed: () {
              Navigator.pushNamed(context, EditView.id);
            },
          );
        },
      ),
    ));
  }
}
