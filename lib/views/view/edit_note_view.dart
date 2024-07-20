import 'package:flutter/material.dart';

import '../widget/item_body/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  static String id = 'edit note view';

  const EditNoteView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteViewBody(),
    );
  }
}
