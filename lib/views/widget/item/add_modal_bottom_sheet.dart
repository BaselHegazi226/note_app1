import 'package:flutter/material.dart';
import 'package:note_app1/views/widget/custom/custom_text_field.dart';

import '../custom/custom_button.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 32,
            horizontal: 16,
          ),
          child: SingleChildScrollView(
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
                  maxLines: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: CustomButton(
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
