import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_project/features/home/presentation/views/widgets/Bulid_populer.dart';
import 'package:food_project/features/home/presentation/views/widgets/CustomAdCard.dart';
import 'package:food_project/features/home/presentation/views/widgets/CustomCategories.dart';
import 'package:food_project/features/home/presentation/views/widgets/Custom_Title_Text.dart';
import 'package:food_project/features/home/presentation/views/widgets/customAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CustomAppBar(),
        CustomAdCard(),
        TittleText(
          text: 'Categories',
        ),
        BuildCategories(),
        TittleText(
          text: 'Popular',
        ),
        BuildPopuler()
      ],
    );
  }
}
