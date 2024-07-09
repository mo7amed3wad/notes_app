// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/views/widgets/custom_App_Bar.dart';
import 'package:notes/views/widgets/note_list_view.dart';

class NotesViewWidget extends StatefulWidget {
  const NotesViewWidget({super.key});

  @override
  State<NotesViewWidget> createState() => _NotesViewWidgetState();
}

class _NotesViewWidgetState extends State<NotesViewWidget> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: const [
          SizedBox(
            height: 10,
          ),
          CostumAppbar(
            icon: Icons.search,
            title: "Notes",
          ),
          Expanded(child: NoteListView())
        ],
      ),
    );
  }
}
