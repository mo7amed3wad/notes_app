import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/models/notes_models.dart';
import 'package:notes/views/widgets/custom_note_item.dart';

class NoteListView extends StatefulWidget {
  const NoteListView({super.key});

  @override
  State<NoteListView> createState() => _NoteListViewState();
}

class _NoteListViewState extends State<NoteListView> {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
            List<NoteSModel> noteslist = BlocProvider.of<NotesCubit>(context).notes!;

          return ListView.builder(
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: NotesItem(

                  note: noteslist[index],
                ),
              );
            },
            itemCount: noteslist.length,
            // ignore: avoid_print
          );
          // ignore: avoid_print
        },
      ),
    );
  }
}
