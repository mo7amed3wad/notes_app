import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
   String? title;
  final int maxline;
  final Function(String?)? onSaved;
  final Function(String)? onChanged;
  TextEditingController? controller;
  CustomTextField(
      {super.key,
       this.title,
      this.maxline = 1,
      this.onSaved,
      this.onChanged,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
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
