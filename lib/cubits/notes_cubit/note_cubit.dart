import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app1/models/note_model.dart';
import 'package:note_app1/views/widget/helper/constant.dart';

import 'note_states.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitialState());
  List<NoteModel>? notes;
  fetchAllNotes() async {
    var noteBox = Hive.box<NoteModel>(kBoxName);
    notes = noteBox.values.toList();
    emit(NoteSuccessState());
  }
}
