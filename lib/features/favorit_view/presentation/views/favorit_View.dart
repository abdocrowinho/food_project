import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/favorit_view/presentation/views/widgets/favorite_View_Body.dart';

class FavoritView extends StatelessWidget {
  const FavoritView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: MyColors.kscaffoldColor,
      body: FavoriteViewBody(),
    );
  }
}
