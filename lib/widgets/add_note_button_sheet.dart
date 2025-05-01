import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_add_note_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 30),
              CustomTextField(hintText: 'Title'),
              SizedBox(height: 16),
              CustomTextField(hintText: 'Content', maxLines: 5),
              SizedBox(height: 60),
              CustomAddNoteButton(),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
