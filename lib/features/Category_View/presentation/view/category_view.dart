import 'package:flutter/material.dart';
import 'package:food_project/features/Category_View/presentation/view/widgets/catgory_view_Body.dart';
import 'package:food_project/features/home/presentation/views/widgets/Catgory_model.dart';
import 'package:go_router/go_router.dart';

class CatgoryView extends StatelessWidget {
  const CatgoryView({
    super.key,
    required this.model,
  });
  final CatgoryModel model;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CatgoryViewBody(
        model: model,
      ),
    );
  }
}
