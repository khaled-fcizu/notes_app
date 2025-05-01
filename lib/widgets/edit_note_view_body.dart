import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppBar(
            appBarTitle: 'Edit Note',
            icon: FontAwesomeIcons.check,
          ),
          SizedBox(height: 20),
          CustomTextField(hintText: 'Title'),
          SizedBox(height: 20),
          CustomTextField(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
