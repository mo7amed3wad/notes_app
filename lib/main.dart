import 'package:flutter/material.dart';
import 'package:notes/views/notes_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.amberAccent,
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color.fromARGB(255, 2, 28, 41)),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}
