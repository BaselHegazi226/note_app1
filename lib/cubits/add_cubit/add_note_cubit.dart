import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app1/constant.dart';
import 'package:note_app1/cubits/add_cubit/add_note_state.dart';
import 'package:note_app1/models/note_model.dart';

class NoteCubit extends Cubit<AddNoteState> {
  NoteCubit() : super(AddNoteInitialState());

  addNote(NoteModel note) async {
    emit(AddNoteLoadingState());
    try {
      var noteBox = Hive.box<NoteModel>(kBoxName);
      emit(AddNoteSuccessState());
      await noteBox.add(note);
    } catch (e) {
      emit(AddNoteFailureState(e.toString()));
    }
  }
}
