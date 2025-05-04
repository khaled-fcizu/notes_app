import 'package:notes_app/models/note_model.dart';

abstract class NoteStates {}

class NoteInitial extends NoteStates {}

class Notesuccess extends NoteStates {
  final List<NoteModel> noteslist;
  Notesuccess(this.noteslist);
}

class NoteFaluire extends NoteStates {
  final String errorMessage;
  NoteFaluire(this.errorMessage);
}
