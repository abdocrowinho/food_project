import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomTextFromFieldEmail extends StatelessWidget {
  const CustomTextFromFieldEmail(
      {super.key, required this.textcontroller, required this.onChanged});
  final void Function(String)? onChanged;
  final TextEditingController textcontroller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: emailValidtion,
      controller: textcontroller,
      cursorHeight: 25,
      onChanged: onChanged,
      cursorColor: MyColors.kcolors3,
      decoration: InputDecoration(
        hintText: 'Email@gmail.com',
        hintStyle: TextStyle(color: MyColors.kcolors3.withOpacity(.5)),
        label: const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            'Enter Your Email',
            style: TextStyle(color: MyColors.kcolors3),
          ),
        ),
        border: colorForborderHasNoError(),
        enabledBorder: colorForborderHasNoError(),
        focusedBorder: colorForborderHasNoError(),
      ),
    );
  }

  String? emailValidtion(value) {
    if (value == null || value.isEmpty) {
      return 'email is required';
    }
    final bool emailValid =
        RegExp(r"^[a-zA-Z0-9._%+-]+@gmail\.com$").hasMatch(value);
    if (!emailValid) {
      return 'Enter a valid email address';
    }

    return null;
  }

  OutlineInputBorder colorForborderHasNoError() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: MyColors.kcolors3),
        borderRadius: BorderRadius.circular(10));
  }
}
