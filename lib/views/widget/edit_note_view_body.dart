import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 16,
      ),
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Title',
            maxLines: 2,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'content',
            maxLines: 7,
          ),
        ],
      ),
    );
  }
}
