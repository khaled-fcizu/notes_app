import 'package:flutter/material.dart';
import 'package:notes_app/widgets/add_note_widgets.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: SafeArea(child: AddNoteWidgets()),
      ),
    );
  }
}
