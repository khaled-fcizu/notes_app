import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note%20cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_note_item.dart';
import 'package:notes_app/widgets/notes_list_view.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.close),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('data');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<NoteModel>? filterdNotesList;
    filterdNotesList =
        BlocProvider.of<NoteCubit>(context).notesList
            ?.where((element) => element.title.contains(query))
            .toList() ??
        [];
    return query == ''
        ? Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: NotesListView(),
        )
        : Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 12,
          ),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: filterdNotesList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: CustomNoteItem(note: filterdNotesList![index]),
              );
            },
          ),
        );
  }
}
