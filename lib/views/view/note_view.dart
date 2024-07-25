import 'package:flutter/material.dart';

import '../widget/item/add_modal_bottom_sheet.dart';
import '../widget/item_body/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = 'note view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1D1B20),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 500,
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
          color: Color(0xff1D1B20),
          weight: 150,
        ),
      ),
      body: const NoteViewBody(),
    );
  }
}
