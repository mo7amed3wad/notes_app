// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/models/notes_models.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteSModel>? notes;
  fetchAllNotes() {
    var notebox = Hive.box<NoteSModel>(hiveboxname);
    notes = notebox.values.toList();
  }
}
