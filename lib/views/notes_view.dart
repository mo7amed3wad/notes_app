// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes/views/widgets/notes_view_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
          // ignore: avoid_print
          print("3wad");
        },
        backgroundColor: prColor,
        child: const Icon(Icons.add, color: Colors.black),
      ),
      body: const SafeArea(child: NotesViewWidget()),
    );
  }
}
