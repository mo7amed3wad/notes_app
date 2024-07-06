import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes/constants/colors.dart';
import 'package:notes/models/notes_models.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteSModel notemodel) {
    emit(AddNoteLoading());
    try {
  var notebox = Hive.box<NoteSModel>(hiveboxname);
  notebox.add(notemodel);
  emit(AddNoteSuccess());
}  catch (e) {
  emit(AddNoteFailure(e.toString()));
}
  }
}
