import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomCardButton extends StatelessWidget {
  const CustomCardButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      child: Container(
        decoration: const BoxDecoration(
          color: MyColors.kcolors3,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(40), bottomLeft: Radius.circular(20)),
        ),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              color: MyColors.kContainercolor,
            )),
      ),
    );
  }
}
