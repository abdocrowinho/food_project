import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/features/auth/view_model/cubit/Auth_cubit/auth_cubit.dart';

import 'package:food_project/features/auth/signUp/views/widgets/Custom_text_from_field_Email.dart';
import 'package:food_project/features/auth/signUp/views/widgets/Cutom_Text_From_Faild.dart';
import 'package:food_project/features/auth/signUp/views/widgets/custom_Send_button.dart';
import 'package:food_project/features/auth/signUp/views/widgets/custom_cover.dart';
import 'package:food_project/features/auth/signUp/views/widgets/custom_text_from_Field_password.dart';
import 'package:food_project/features/auth/signUp/views/widgets/custom_row_Text_With_TextButton.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignViewBody extends StatefulWidget {
  const SignViewBody({super.key});

  @override
  State<SignViewBody> createState() => _SignViewBodyState();
}

class _SignViewBodyState extends State<SignViewBody> {
  bool isLoading = false;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var _AuthCupit = BlocProvider.of<AuthCubit>(context);
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is RegisterSuccsess) {
          GoRouter.of(context).go(Routs.takeimage);
          isLoading = false;
          return showsnackbar(context, 'Register Succsesfuly  ');
        } else if (state is RegisterFailure) {
          isLoading = false;
          return showsnackbar(context, state.errorMessage);
        } else if (state is RegisterLoading) {
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          color: MyColors.kcolors3,
          inAsyncCall: isLoading,
          child: SingleChildScrollView(
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
                          textcontroller: _AuthCupit.userName,
                          onChanged: (valu) {
                            _AuthCupit.userName.text = valu;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomTextFromFieldEmail(
                          textcontroller: _AuthCupit.emailEditingController,
                          onChanged: (value) {
                            _AuthCupit.emailEditingController.text = value;
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomPasswordTextFromField(
                          onChanged: (value) {
                            _AuthCupit.passworEditingController.text = value;
                          },
                          controller: _AuthCupit.passworEditingController,
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
                            if (formkey.currentState!.validate()) {
                              BlocProvider.of<AuthCubit>(context).register();
                            }
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
          ),
        );
      },
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
    var _AuthCupit = BlocProvider.of<AuthCubit>(context);
    bool passwordMatch =
        RegExp(_AuthCupit.passworEditingController.text).hasMatch(value);
    if (!passwordMatch) {
      return 'not match';
    } else {
      return null;
    }
  }

  void showsnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.black,
        content: Text(message),
      ),
    );
  }
}
