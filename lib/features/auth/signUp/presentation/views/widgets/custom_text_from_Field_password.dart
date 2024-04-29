import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomPasswordTextFromField extends StatefulWidget {
  const CustomPasswordTextFromField({
    super.key,
    required this.validator,
    this.controller,
  });

  final String? Function(String?)? validator;
  final TextEditingController? controller;

  @override
  State<CustomPasswordTextFromField> createState() =>
      _CustomPasswordTextFromFieldState();
}

class _CustomPasswordTextFromFieldState
    extends State<CustomPasswordTextFromField> {
  bool isRedEyeClick = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      obscureText: isRedEyeClick,
      cursorHeight: 25,
      cursorColor: MyColors.kcolors3,
      decoration: InputDecoration(
        suffixIcon: eyeiconbutton(isEyeClicked: isRedEyeClick),
        hintText: 'enter Your Password',
        hintStyle: TextStyle(color: MyColors.kcolors3.withOpacity(.5)),
        label: const Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            'Password',
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

  IconButton eyeiconbutton({required bool isEyeClicked}) {
    if (isEyeClicked == false) {
      return IconButton(
        onPressed: () {
          isRedEyeClick = !isRedEyeClick;
          setState(() {});
        },
        icon: const Icon(
          FontAwesomeIcons.eye,
          size: 15,
        ),
      );
    } else {
      return IconButton(
        onPressed: () {
          isRedEyeClick = !isRedEyeClick;
          setState(() {});
        },
        icon: const Icon(
          FontAwesomeIcons.eyeSlash,
          size: 15,
        ),
      );
    }
  }
}
