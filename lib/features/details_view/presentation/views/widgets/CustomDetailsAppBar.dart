import 'package:flutter/cupertino.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/details_view/presentation/views/widgets/CustomAppBarActions.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 60, 10, 20),
      decoration: const BoxDecoration(
        color: MyColors.backgroundItems,
      ),
      child: Column(
        children: [
          const CustomAppBarActions(
            text: 'Details     ',
          ),
          Image.asset(
            'assets/FruitsCatogries.png',
            height: 180,
            width: 100,
          ),
        ],
      ),
    );
  }
}
