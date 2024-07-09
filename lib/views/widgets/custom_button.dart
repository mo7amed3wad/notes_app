// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:notes/constants/colors.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    this.onTap,
    this.isLoading =false,
  }) : super(key: key);
  final Function()? onTap;
  final bool isLoading;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            color: prColor, borderRadius: BorderRadius.circular(9)),
        child: Center(
          child: widget.isLoading
              ? const CircularProgressIndicator(
                  color: Colors.black,
                )
              : const Text(
                  "Add",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
        ),
      ),
    );
  }
}
