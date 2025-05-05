import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.onSaved,
    this.onChange,
  });
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          // (?) if value = null don't access isEmpty , (??) if value?.isEmpty == null replace them with true
          return 'field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),

          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),

          borderSide: BorderSide(color: kPrimaryColor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),

          borderSide: BorderSide(color: kPrimaryColor),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor),
      ),
    );
  }
}
