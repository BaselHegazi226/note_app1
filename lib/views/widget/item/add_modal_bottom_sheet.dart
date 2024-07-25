import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app1/cubits/add_cubit/add_note_cubit.dart';
import 'package:note_app1/cubits/add_cubit/add_note_state.dart';
import 'package:note_app1/views/widget/custom/custom_snack_bar.dart';

import '../custom/add_note_form.dart';

class AddModalBottomSheet extends StatelessWidget {
  const AddModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailureState) {
            showSnackBar(context, 'error :${state.errorMessage}');
          } else if (state is AddNoteSuccessState) {
            showSnackBar(context, 'add note is Successful');
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            //when the modalProgressHud is loading is stopped any thing on the screen
            absorbing: state is AddNoteLoadingState ? true : false,
            child: ModalProgressHUD(
              inAsyncCall: state is AddNoteLoadingState,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 32,
                  horizontal: 16,
                ),
                child: SingleChildScrollView(
                  child: AddNoteForm(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
