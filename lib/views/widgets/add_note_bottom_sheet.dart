import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SizedBox(
        height: 350,
        child: Column(
          children: [
            CustomTextField(
              title: "title",
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              title: "content",
              maxline: 5,
            ),
            Spacer(),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}
