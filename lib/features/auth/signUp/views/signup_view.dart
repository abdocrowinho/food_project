import 'package:flutter/material.dart';
import 'package:food_project/features/auth/signUp/views/widgets/signUP_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SignViewBody(),
    );
  }
}
