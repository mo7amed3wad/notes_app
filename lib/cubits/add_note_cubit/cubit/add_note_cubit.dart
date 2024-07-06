import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes/models/notes_models.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteSModel notemodel) {}
}
