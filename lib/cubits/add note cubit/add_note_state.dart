abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteFaluire extends AddNoteState {
  String errorMessage;
  AddNoteFaluire(this.errorMessage);
}

class AddNoteSuccess extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}
