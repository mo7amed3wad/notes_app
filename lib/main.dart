import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/bloc_observer.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/cubits/cubit/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes/models/notes_models.dart';
import 'package:notes/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteSModelAdapter());
  await Hive.openBox<NoteSModel>(hiveboxname);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: Colors.amberAccent,
            brightness: Brightness.dark,
            scaffoldBackgroundColor: const Color.fromARGB(255, 2, 28, 41)),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
      ),
    );
  }
}
