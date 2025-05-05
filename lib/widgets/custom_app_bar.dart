import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.appBarTitle,
    required this.icon,
    this.onPressed,
  });
  final String appBarTitle;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(appBarTitle, style: TextStyle(fontSize: 28)),
        Spacer(),
        CustomIcon(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
