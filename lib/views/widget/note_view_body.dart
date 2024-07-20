import 'package:flutter/material.dart';

import 'custom_app_bar.dart';
import 'note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 54,
          ),
          CustomAppBar(),
          SizedBox(
            height: 8,
          ),
          NoteListView(),
        ],
      ),
    );
  }
}

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const NoteItem();
        },
      ),
    );
  }
}
