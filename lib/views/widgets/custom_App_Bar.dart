// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
// ignore_for_file: file_names
import 'package:flutter/material.dart';

import 'package:notes/views/widgets/custom_search_icon.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({
    Key? key,
    required this.title,
    required this.icon,
    this.onPressed,
  }) : super(key: key);
  final String title;
  final Icon icon;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 25),
        ),
        const Spacer(),
        CustomSearchIcon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
