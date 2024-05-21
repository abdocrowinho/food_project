import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  TextEditingController userName = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passworEditingController = TextEditingController();
  TextEditingController logEmailEditingController = TextEditingController();
  TextEditingController logPassworEditingController = TextEditingController();
  UserCredential? _userCredential;

  Future<void> register() async {
    emit(RegisterLoading());
    try {
      _userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: emailEditingController.text,
              password: passworEditingController.text);

      emit(RegisterSuccsess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterFailure('password Is weak Please enter Strong Passxwor '));
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        emit(RegisterFailure('This emil Already exists'));
      }
    }
  }

  Future<void> signin() async {
    emit(SignInLoading());
    try {
      _userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: logEmailEditingController.text,
          password: logPassworEditingController.text);
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setBool('isLogedIn', true);
      emit(SignInSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailure("some Thing Went wrong"));
        print('No user found for that email.');
      } else if (e.code == 'invalid-credential') {
        emit(SignInFailure("some Thing Went wrong"));

        print(e.code);
      }
    }
  }
}
