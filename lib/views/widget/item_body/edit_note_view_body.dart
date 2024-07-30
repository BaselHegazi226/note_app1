import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/models/note_model.dart';

import '../../../cubits/notes_cubit/note_cubit.dart';
import '../custom/CustomTextFieldForEditView.dart';
import '../custom/custom_app_bar.dart';
import '../item/color_list_view.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBody();
}

class _EditNoteViewBody extends State<EditNoteViewBody> {
  String? title, subTitle;
  late TextEditingController textEditingControllerTitle;
  late TextEditingController textEditingControllerSubTitle;

  @override
  void initState() {
    super.initState();
    textEditingControllerTitle =
        TextEditingController(text: widget.noteModel.title);
    textEditingControllerSubTitle =
        TextEditingController(text: widget.noteModel.subTitle);
  }

  @override
  void dispose() {
    textEditingControllerTitle.dispose();
    textEditingControllerSubTitle.dispose();
    super.dispose();
  }

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
            CustomAppBar(
              onPressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.subTitle =
                    subTitle ?? widget.noteModel.subTitle;
                widget.noteModel.save();
                BlocProvider.of<NoteCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              iconData: Icons.check,
              title: 'Edit Note',
            ),
            const SizedBox(
              height: 32,
            ),
            CustomTextFieldForEditView(
              labelText: 'Title',
              labelColor: Color(widget.noteModel.color),
              onChanged: (value) {
                title = value;
              },
              textEditingController: textEditingControllerTitle,
              hintText: 'Title',
              maxLines: 2,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFieldForEditView(
              labelText: 'SubTitle',
              labelColor: Color(widget.noteModel.color),
              onChanged: (value) {
                subTitle = value;
              },
              textEditingController: textEditingControllerSubTitle,
              hintText: 'Content',
              maxLines: 10,
            ),
            const SizedBox(
              height: 16,
            ),
            EditColorListView(
              noteModel: widget.noteModel,
            ),
          ],
        ),
      ),
    );
  }
}
