import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes/cubits/cubit/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/views/widgets/form_bottom_sheet.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {}
          if (state is AddNoteSuccess) {
            Navigator.of(context).pop();
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: AddFormSheet()),
            ),
          );
        },
      ),
    );
  }
}
