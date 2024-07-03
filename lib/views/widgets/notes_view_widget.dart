// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_App_Bar.dart';
import 'package:notes/views/widgets/note_list_view.dart';

class NotesViewWidget extends StatelessWidget {
  const NotesViewWidget({super.key});

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
