import 'package:flutter/material.dart';
import 'package:note_app1/views/widget/custom_text_field.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
        child: Column(
          children: [
            CustomTextField(
              paddingSpace: 0,
              hintText: 'Title',
            ),
            CustomTextField(
              paddingSpace: 70,
              hintText: 'content',
            ),
          ],
        ),
      ),
    );
  }
}
