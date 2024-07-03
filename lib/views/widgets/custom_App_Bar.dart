// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_search_icon.dart';

class CostumAppbar extends StatelessWidget {
  const CostumAppbar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

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
          icon: icon,
        )
      ],
    );
  }
}
