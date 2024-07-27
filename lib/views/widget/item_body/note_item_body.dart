import 'package:flutter/material.dart';
import 'package:note_app1/models/note_model.dart';

class NoteItemBody extends StatelessWidget {
  const NoteItemBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.only(
        top: 24,
        left: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(noteModel.color).withOpacity(.7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(8),
            title: Text(
              noteModel.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontFamily: 'assets/fonts/rubik/Rubik-ExtraBold.ttf',
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 8,
                right: 16,
              ),
              child: Text(
                noteModel.subTitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 20,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.black,
                size: 32,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: Text(
              noteModel.dateTime,
              style: TextStyle(
                color: Colors.black.withOpacity(.5),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
