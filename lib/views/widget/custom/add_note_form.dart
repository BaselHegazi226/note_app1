import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app1/models/note_model.dart';

import '../../../cubits/add_cubit/add_note_cubit.dart';
import '../item/color_list_view.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  AddNoteForm({super.key});
  GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  //AutovalidateMode autoValidator = AutovalidateMode.disabled;

  @override
  State<AddNoteForm> createState() => _AddNoteForm();
}

class _AddNoteForm extends State<AddNoteForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Title',
            maxLines: 2,
            onSaved: (value) {
              widget.title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: 'Content',
            maxLines: 7,
            onSaved: (value) {
              widget.subTitle = value;
            },
          ),
          const SizedBox(
            height: 8,
          ),
          const ColorListView(),
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: CustomButton(
              onTap: () async {
                validateButton(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void validateButton(BuildContext context) {
    if (widget.formKey.currentState!.validate()) {
      widget.formKey.currentState!.save();
      var currentDate = DateTime.now();
      var hour = DateTime.now().hour;
      String time = 'pm';
      if (DateTime.now().hour <= 11) {
        time = 'am';
      }
      var formattedCurrentDate =
          DateFormat('dd MMMM yyyy : ${hour + 1}: mm').format(currentDate);
      var note = NoteModel(
        title: widget.title!,
        subTitle: widget.subTitle!,
        dateTime: '$formattedCurrentDate $time',
        color: Colors.blue.value,
      );
      BlocProvider.of<AddNoteCubit>(context).addNote(note);
    }
  }
}
