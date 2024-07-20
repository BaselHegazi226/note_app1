import 'package:flutter/material.dart';

import '../widget/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = 'note view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteViewBody(),
    );
  }
}
