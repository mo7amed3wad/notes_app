import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/cubit/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/models/notes_models.dart';
import 'package:notes/views/widgets/custom_App_Bar.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class EditView extends StatefulWidget {
  final NoteSModel note;
  const EditView({super.key, required this.note});

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          CostumAppbar(
              title: "Edit Note",
              icon: const Icon(Icons.check),
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.of(context).pop();
              }),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            controller: TextEditingController(text: widget.note.title),
            onChanged: (value) {
              title = value;
            },
            title: "title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            controller: TextEditingController(text: widget.note.subtitle),
            onChanged: (value) {
              subtitle = value;
            },
            title: "subtitle",
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
