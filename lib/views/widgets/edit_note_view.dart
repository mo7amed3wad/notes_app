import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_App_Bar.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          CostumAppbar(title: "Edit Note", icon: Icons.check),
        ],
      ),
    );
  }
}
