import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/features/auth/login/views/widgets/custom_Login_button.dart';
import 'package:food_project/features/auth/login/views/widgets/custom_cover_login.dart';
import 'package:food_project/features/auth/login/views/widgets/custom_row_Text_With_TextButton_Login.dart';
import 'package:food_project/features/auth/login/views/widgets/custom_text_from_Field_password_Login.dart';
import 'package:food_project/features/auth/view_model/cubit/Auth_cubit/auth_cubit.dart';

import 'package:food_project/features/auth/signUp/views/widgets/Custom_text_from_field_Email.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    var _authCubit = BlocProvider.of<AuthCubit>(context);
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInLoading) {
          isloading = true;
        } else if (state is SignInSuccess) {
          isloading = false;
          GoRouter.of(context).go(Routs.bottomNavBar);
        } else if (state is SignInFailure) {
          isloading = false;
          showsnackbar(context, state.errorMessage);
        }
      },
      child: ModalProgressHUD(
        inAsyncCall: isloading,
        child: SingleChildScrollView(
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
                        textcontroller: _authCubit.logEmailEditingController,
                        onChanged: (value) {
                          _authCubit.logEmailEditingController.text = value;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomPasswordTextFromFieldLogin(
                        onchange: (value) {
                          _authCubit.logPassworEditingController.text = value;
                        },
                        controller: _authCubit.logPassworEditingController,
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
                          if (formkey.currentState!.validate()) {
                            BlocProvider.of<AuthCubit>(context).signin();
                          }
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
        ),
      ),
    );
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
