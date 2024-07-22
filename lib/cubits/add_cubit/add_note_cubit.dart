import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app1/cubits/add_cubit/add_note_state.dart';

class NoteCubit extends Cubit<AddNoteState> {
  NoteCubit() : super(AddNoteInitialState());
}
