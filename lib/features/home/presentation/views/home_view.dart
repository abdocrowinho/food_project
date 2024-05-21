import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/home/presentation/views/widgets/Side_Bar.dart';
import 'package:food_project/features/home/presentation/views/widgets/home_view_body.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: CustomSideBar(),
      backgroundColor: MyColors.kscaffoldColor,
      body: HomeViewBody(),
    );
  }
}
