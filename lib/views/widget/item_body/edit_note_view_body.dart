import 'package:flutter/material.dart';

import '../custom/custom_app_bar.dart';
import '../custom/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 54,
              ),
              const CustomAppBar(
                iconData: Icons.check,
                title: 'Edit Note',
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextField(
                hintText: 'Title',
                maxLines: 2,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                hintText: 'content',
                maxLines: 10,
              ),
            ],
          ),
        ));
  }
}
