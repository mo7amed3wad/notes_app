part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class Notessuccess extends NotesState {
  final List<NoteSModel> notes;
  Notessuccess(this.notes);
}

final class NotesFaliour extends NotesState {
  final String message;
  NotesFaliour(this.message);
}
