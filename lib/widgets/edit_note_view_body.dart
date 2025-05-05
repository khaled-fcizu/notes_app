import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/note%20cubit/note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NoteCubit>(context).fetchAllNotes();
              Navigator.of(context).pop();
            },
            appBarTitle: 'Edit Note',
            icon: FontAwesomeIcons.check,
          ),
          SizedBox(height: 20),
          CustomTextField(
            hintText: widget.note.title,
            onChange: (value) {
              title = value;
            },
          ),
          SizedBox(height: 20),
          CustomTextField(
            hintText: widget.note.subTitle,
            maxLines: 5,
            onChange: (value) {
              subTitle = value;
            },
          ),
        ],
      ),
    );
  }
}
