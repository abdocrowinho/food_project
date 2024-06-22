import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';

class EmailEditFaild extends StatelessWidget {
  const EmailEditFaild({
    super.key,
    required this.email,
  });
  final String email;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: " email ",
        hintText: email,
        labelStyle: const TextStyle(color: MyColors.kcolors3),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.kcolors3)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.kcolors3)),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.kcolors3),
        ),
      ),
    );
  }
}
