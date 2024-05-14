import 'package:flutter/material.dart';
import 'package:food_project/features/Category_View/presentation/view/widgets/Custom_catgory_List.dart';
import 'package:food_project/features/Category_View/presentation/view/widgets/custom_catgory_AppBar.dart';
import 'package:food_project/features/home/presentation/views/widgets/Catgory_model.dart';

class CatgoryViewBody extends StatelessWidget {
  const CatgoryViewBody({super.key, required this.model});
  final CatgoryModel model;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        CustomCatgoryAppBar(
          model: model,
        ),
        const CustomCAtgoryList()
      ],
    );
  }
}
