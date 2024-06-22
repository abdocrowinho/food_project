import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';

class UserNameEditFaild extends StatelessWidget {
  const UserNameEditFaild({
    super.key,
    required this.userName,
    required this.onChange,
  });

  final String? userName;
  final void Function(String?) onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
      validator: (value) {
        if (value!.length < 5 && value.isNotEmpty) {
          return "User name is to short";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: " User name  ",
        labelStyle: const TextStyle(color: MyColors.kcolors3),
        hintText: userName,
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
