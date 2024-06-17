import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/features/auth/takeImage_View/view_model/cubit/Take_image_Cubit/take_image_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileViewForm {
  final String profileoption;
  final Icon profileIcon;
  ProfileViewForm({
    required this.profileIcon,
    required this.profileoption,
  });
}

class ProfileViewModel {
  List<ProfileViewForm> optionsList = [
    ProfileViewForm(
      profileIcon: const Icon(FontAwesomeIcons.penToSquare),
      profileoption: 'Edit profile',
    ),
    ProfileViewForm(
      profileIcon: const Icon(FontAwesomeIcons.clock),
      profileoption: 'Order History',
    ),
    ProfileViewForm(
      profileIcon: const Icon(FontAwesomeIcons.creditCard),
      profileoption: 'Cards',
    ),
    ProfileViewForm(
      profileIcon: const Icon(FontAwesomeIcons.bell),
      profileoption: 'notifications',
    ),
    ProfileViewForm(
      profileIcon: const Icon(FontAwesomeIcons.squareCaretRight),
      profileoption: 'Log Out',
    ),
  ];

  VoidCallback onTapFunction(BuildContext context, int i) {
    List<VoidCallback> onTap = [
      // Edit Profile
      () {
        GoRouter.of(context).push(Routs.home);
      },
      //Order History
      () {
        print(" Url is : " "${BlocProvider.of<TakeImageCubit>(context).url}");
      },
      //Cars
      () {},
      // Notification
      () {},
      //Log Out
      () async {
        await FirebaseAuth.instance.signOut();
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setBool("isLogedIn", false);
        context.go(Routs.login);
      }
    ];
    return onTap[i];
  }
}
