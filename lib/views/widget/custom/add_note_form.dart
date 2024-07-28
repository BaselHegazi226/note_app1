import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app1/models/note_model.dart';

import '../../../cubits/add_cubit/add_note_cubit.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatelessWidget {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  AutovalidateMode autoValidator = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidator,
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
            hintText: 'Content',
            maxLines: 7,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: CustomButton(
              onTap: () async {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  var currentDate = DateTime.now();
                  var formattedCurrentDate =
                      DateFormat('yyyy dd MMMM : HH').format(currentDate);
                  var note = NoteModel(
                    title: title!,
                    subTitle: subTitle!,
                    dateTime: formattedCurrentDate,
                    color: Colors.blue.value,
                  );
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                } else {
                  autoValidator = AutovalidateMode.always;
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
