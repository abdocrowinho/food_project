import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/features/auth/login/presentation/views/widgets/custom_Login_button.dart';
import 'package:food_project/features/auth/login/presentation/views/widgets/custom_cover_login.dart';
import 'package:food_project/features/auth/login/presentation/views/widgets/custom_row_Text_With_TextButton_Login.dart';
import 'package:food_project/features/auth/login/presentation/views/widgets/custom_text_from_Field_password_Login.dart';

import 'package:food_project/features/auth/signUp/presentation/views/widgets/Custom_text_from_field_Email.dart';
import 'package:go_router/go_router.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController textEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passworEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomCoverLoginScreen(),
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
                  CustomPasswordTextFromFieldLogin(
                    controller: passworEditingController,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomLoginButton(
                    tittle: 'Login',
                    onPressed: () {
                      GoRouter.of(context).push(Routs.bottomNavBar);
                      formkey.currentState!.validate();
                    },
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const CustomRowWithSignUpTextButton(
            tittel: 'signup now',
          )
        ],
      ),
    );
  }
}
