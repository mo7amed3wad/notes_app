import 'package:flutter/material.dart';
import 'package:notes/models/notes_models.dart';
import 'package:notes/views/widgets/edit_note_view.dart';

class EditNoteView extends StatelessWidget {
  final NoteSModel note;
  const EditNoteView({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(body: SafeArea(child: EditView( note: note,)));
  }
}
