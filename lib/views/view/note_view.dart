import 'package:flutter/material.dart';

import '../widget/add_modal_bottom_sheet.dart';
import '../widget/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = 'note view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black87,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const AddModalBottomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
      body: const NoteViewBody(),
    );
  }
}
