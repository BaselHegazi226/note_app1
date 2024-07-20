import 'package:flutter/material.dart';
import 'package:note_app1/views/view/edit_note_view.dart';

import 'note_item_body.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    super.key,
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
      child: const NoteItemBody(),
    );
  }
}
