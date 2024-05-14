import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/profile_details_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.kscaffoldColor,
      body: ProfileViewBody(),
    );
  }
}
