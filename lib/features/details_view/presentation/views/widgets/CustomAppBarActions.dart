import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:food_project/core/widgets/Custom_App_bar_Icon.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomAppBarActions extends StatelessWidget {
  const CustomAppBarActions({
    super.key,
    required this.text,
    this.iconData,
    this.color,
  });
  final String text;
  final IconData? iconData;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppBarIcon(
          iconColor: MyColors.kcolors3,
          backGroundColor: MyColors.kscaffoldColor,
          iconData: Icons.arrow_back_ios_new,
        ),
        Row(
          children: [
            Icon(iconData, size: 26, color: MyColors.kContainercolor),
            Text(
              text,
              style: const TextStyle(color: MyColors.kcolors3, fontSize: 22),
            )
          ],
        ),
        const AppBarIcon(
          iconColor: MyColors.kcolors3,
          backGroundColor: MyColors.kscaffoldColor,
          iconData: FontAwesomeIcons.bell,
        )
      ],
    );
  }
}
