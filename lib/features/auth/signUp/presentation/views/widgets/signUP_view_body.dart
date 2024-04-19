import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:food_project/features/auth/signUp/presentation/views/widgets/Custom_text_from_field_Email.dart';
import 'package:food_project/features/auth/signUp/presentation/views/widgets/Cutom_Text_From_Faild.dart';
import 'package:food_project/features/auth/signUp/presentation/views/widgets/custom_Send_button.dart';
import 'package:food_project/features/auth/signUp/presentation/views/widgets/custom_cover.dart';
import 'package:food_project/features/auth/signUp/presentation/views/widgets/custom_text_from_Field_password.dart';
import 'package:food_project/features/auth/signUp/presentation/views/widgets/custom_row_Text_With_TextButton.dart';

class SignViewBody extends StatefulWidget {
  const SignViewBody({super.key});

  @override
  State<SignViewBody> createState() => _SignViewBodyState();
}

class _SignViewBodyState extends State<SignViewBody> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passworEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomCoverSignUpScreen(),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: formkey,
              child: Column(
                children: [
                  CustomTextFromField(
                    textcontroller: textEditingController,
                    onChanged: (valu) {
                      textEditingController.text = valu;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextFromFieldEmail(
                    textcontroller: emailEditingController,
                    onChanged: (value) {
                      emailEditingController.text = value;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomPasswordTextFromField(
                    controller: passworEditingController,
                    validator: passwordValidation,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomPasswordTextFromField(
                    validator: confirmPasswordValidation,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomSendButton(
                    onPressed: () {
                      formkey.currentState!.validate();
                    },
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const CustomLoginNowButton(
            tittel: 'Login Now',
          )
        ],
      ),
    );
  }

  String? passwordValidation(value) {
    if (value == null || value.isEmpty) {
      return 'password is required';
    } else if (value.length < 8) {
      return 'password is short';
    }
    bool validatePassword = RegExp(r'^[a-zA-Z0-9._%+-]+[a-zA]').hasMatch(value);
    if (!validatePassword) {
      return 'Un healthy password , You Should \n be Write Some Latters capital And Small ';
    } else {
      return null;
    }
  }

  String? confirmPasswordValidation(value) {
    bool passwordMatch = RegExp(passworEditingController.text).hasMatch(value);
    if (!passwordMatch) {
      return 'not match';
    } else {
      return null;
    }
  }
}
