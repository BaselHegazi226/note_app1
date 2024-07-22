import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_text_field.dart';

class CustomFormBottomSheet extends StatefulWidget {
  const CustomFormBottomSheet({super.key});

  @override
  State<CustomFormBottomSheet> createState() => _CustomFormBottomSheet();
}

class _CustomFormBottomSheet extends State<CustomFormBottomSheet> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            hintText: 'Title',
            maxLines: 2,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            onSaved: (value) {
              subTitle = value;
            },
            hintText: 'content',
            maxLines: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  setState(() {});
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
