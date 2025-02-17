import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app1/cubits/add_cubit/add_note_state.dart';
import 'package:note_app1/models/note_model.dart';
import 'package:note_app1/views/widget/helper/constant.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
  Color color = const Color(0xFFFF6B6B);
  addNote(NoteModel note) async {
    emit(AddNoteLoadingState());
    try {
      note.color = color.value;
      var noteBox = Hive.box<NoteModel>(kBoxName);
      await noteBox.add(note);
      emit(AddNoteSuccessState());
    } catch (e) {
      emit(AddNoteFailureState(e.toString()));
    }
  }
}
