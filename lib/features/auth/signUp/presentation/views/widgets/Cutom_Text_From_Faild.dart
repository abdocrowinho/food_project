import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField(
      {super.key,
      required this.hint,
      required this.label,
      required this.textcontroller,
      required this.onChanged});
  final void Function(String)? onChanged;
  final TextEditingController textcontroller;
  final String hint;
  final String label;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'User Name is required';
        } else if (value.length < 5) {
          return 'Username is short';
        }
        return null;
      },
      controller: textcontroller,
      cursorHeight: 25,
      onChanged: onChanged,
      cursorColor: MyColors.kcolors3,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: MyColors.kcolors3.withOpacity(.5)),
        label: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Text(
            label,
            style: const TextStyle(color: MyColors.kcolors3),
          ),
        ),
        border: colorForborderHasNoError(),
        enabledBorder: colorForborderHasNoError(),
        focusedBorder: colorForborderHasNoError(),
      ),
    );
  }

  OutlineInputBorder colorForborderHasNoError() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: MyColors.kcolors3),
        borderRadius: BorderRadius.circular(10));
  }
}
