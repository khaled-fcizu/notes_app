import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/note%20cubit/note_states.dart';
import 'package:notes_app/models/note_model.dart';

class NoteCubit extends Cubit<NoteStates> {
  NoteCubit() : super(NoteInitial());
  List<NoteModel>? notesList;
  void fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNoteBox);
    notesList = notesBox.values.toList();
  }
}
