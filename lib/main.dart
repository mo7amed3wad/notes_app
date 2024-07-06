import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/models/notes_models.dart';
import 'package:notes/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(hiveboxname);
  Hive.registerAdapter(NoteSModelAdapter());
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
