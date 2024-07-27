import '../../models/note_model.dart';

abstract class NoteState {}

class NoteInitialState extends NoteState {}

class NoteLoadingState extends NoteState {}

class NoteSuccessState extends NoteState {
  NoteSuccessState(this.notes);
  final List<NoteModel> notes;
}

class NoteFailureState extends NoteState {
  final String errorMessage;
  NoteFailureState(this.errorMessage);
}
