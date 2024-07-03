import 'package:flutter/material.dart';
import 'package:notes/constants/colors.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String title;
  final int maxline;
  const CustomTextField({super.key, required this.title, this.maxline = 1});

  @override
  Widget build(BuildContext context) {
    return TextField(
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
