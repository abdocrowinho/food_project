import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_project/features/favorit_view/presentation/views/widgets/Custo_Favorite_List.dart';
import 'package:food_project/features/favorit_view/presentation/views/widgets/Custom_Favorite_AppBar.dart';

class FavoriteViewBody extends StatelessWidget {
  const FavoriteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [CustomFavoriteAppBar(), CustomFavoriteList()],
    );
  }
}
