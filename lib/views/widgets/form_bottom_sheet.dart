import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/cubit/add_note_cubit.dart';
import 'package:notes/models/notes_models.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddFormSheet extends StatefulWidget {
  const AddFormSheet({super.key});

  @override
  State<AddFormSheet> createState() => _AddFormSheetState();
}

class _AddFormSheetState extends State<AddFormSheet> {
  final GlobalKey<FormState> formkey = GlobalKey();

  String? title, subtitle;

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onSaved: (value) {
              title = value;
              setState(() {
                autovalidateMode = AutovalidateMode.disabled;
              });
            },
            title: "title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
              setState(() {
                autovalidateMode = AutovalidateMode.disabled;
              });
            },
            title: "content",
            maxline: 5,
          ),
          const SizedBox(height: 60),
          CustomButton(
            onTap: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
                var noteModel = NoteSModel(
                    title: title!,
                    subtitle: subtitle!,
                    date: DateTime.now().toString(),
                    color: Colors.blue.value);
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                // ignore: avoid_print
                print(noteModel.subtitle);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
