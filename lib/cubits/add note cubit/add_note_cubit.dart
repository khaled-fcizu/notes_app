import 'package:bloc/bloc.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
}
