import 'package:flutter/material.dart';

import '../../../models/note_model.dart';
import '../helper/constant.dart';
import 'color_item.dart';

class EditColorListView extends StatefulWidget {
  const EditColorListView({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditColorListView> createState() => _EditColorListViewState();
}

class _EditColorListViewState extends State<EditColorListView> {
  late int colorIndex;
  @override
  void initState() {
    colorIndex = kColors.indexOf(Color(widget.noteModel.color));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
            ),
            child: ColorItem(
              onPressed: () {
                colorIndex = index;
                widget.noteModel.color = kColors[index].value;
                setState(() {});
              },
              color: kColors[index].value,
              isActive: colorIndex == index,
            ),
          );
        },
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
