import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String title;
  final int maxline;
  final Function(String?)? onSaved;
  const CustomTextField(
      {super.key, required this.title, this.maxline = 1, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        }
        return null;
      },
      maxLines: maxline,
      cursorColor: prColor,
      decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(
            color: prColor,
          ),
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(const Color(0xff62FCD7)),
          border: buildOutlineInputBorder()),
    );
  }

  OutlineInputBorder buildOutlineInputBorder([cuolor]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: cuolor ?? Colors.white),
      borderRadius: const BorderRadius.all(Radius.circular(10)),
    );
  }
}
