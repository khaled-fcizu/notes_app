import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/add%20note%20cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_item_list_view.dart';
import 'package:notes_app/widgets/custom_add_note_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomTextField(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          SizedBox(height: 30),
          ColorItemListView(),
          SizedBox(height: 30),
          CustomAddNoteButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                var currentDate = DateTime.now();
                String formattedCurrentdate = DateFormat(
                  'dd-MM-yyyy',
                ).format(currentDate); // return string
                // chick validate
                formKey.currentState!
                    .save(); // if validte return null

                var noteModel = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: formattedCurrentdate,
                  color: Colors.blueAccent.value,
                );

                BlocProvider.of<AddNoteCubit>(
                  context,
                ).addNote(noteModel);
              } else {
                autovalidateMode =
                    AutovalidateMode
                        .always; // if validte return value
                setState(() {});
              }
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
