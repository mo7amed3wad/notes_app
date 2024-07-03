// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notes/views/edit_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24, bottom: 24, right: 15),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ListTile(
              title: const Text(
                "Flutter tips",
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  "Build your carrer with Mohamed awad",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3), fontSize: 16),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(
                  bottom: 50,
                ),
                child: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Feb 5,2024",
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.3), fontSize: 16),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
