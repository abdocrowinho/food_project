import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/auth/takeImage_View/widgets/TakeImageBody.dart';

class TakeImageVirw extends StatelessWidget {
  const TakeImageVirw({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.kcolors0,
      body: TakeImageBody(),
    );
  }
}
