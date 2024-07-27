import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app1/constant.dart';
import 'package:note_app1/models/note_model.dart';

import 'note_states.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitialState());

  addNote(NoteModel note) async {
    try {
      var noteBox = Hive.box<NoteModel>(kBoxName);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NoteSuccessState(notes));
    } catch (e) {
      emit(NoteFailureState(e.toString()));
    }
  }
}
