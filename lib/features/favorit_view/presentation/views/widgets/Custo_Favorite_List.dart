import 'package:flutter/material.dart';
import 'package:food_project/features/favorit_view/presentation/views/widgets/Custom_Favorite_Card.dart';

class CustomFavoriteList extends StatelessWidget {
  const CustomFavoriteList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const CustomFavoriteCard();
            }),
      ),
    );
  }
}
