// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/models/notes_models.dart';
import 'package:notes/views/edit_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.notes});
  final NoteSModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, right: 15),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  notes.subtitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3), fontSize: 16),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  // ignore: avoid_print
                  print("item deleted");
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  notes.date,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3), fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
