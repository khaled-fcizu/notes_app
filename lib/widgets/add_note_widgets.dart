import 'package:flutter/cupertino.dart';
import 'package:notes_app/widgets/custom_add_note_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteWidgets extends StatefulWidget {
  const AddNoteWidgets({super.key});

  @override
  State<AddNoteWidgets> createState() => _AddNoteWidgetsState();
}

class _AddNoteWidgetsState extends State<AddNoteWidgets> {
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
          SizedBox(height: 60),
          CustomAddNoteButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                // chick validate
                formKey.currentState!
                    .save(); // if validte return null
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
