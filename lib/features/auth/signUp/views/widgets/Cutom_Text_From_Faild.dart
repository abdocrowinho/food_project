import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomTextFromField extends StatelessWidget {
  const CustomTextFromField(
      {super.key,
      required this.textcontroller,
      required this.onChanged,
      this.onSaved});
  final void Function(String)? onChanged;
  final TextEditingController textcontroller;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
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
        hintText: 'Enter Your name',
        hintStyle: TextStyle(color: MyColors.kcolors3.withOpacity(.5)),
        label: const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            'User Name',
            style: TextStyle(color: MyColors.kcolors3),
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
