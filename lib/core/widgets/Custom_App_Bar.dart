import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:food_project/core/widgets/Custom_App_bar_Icon.dart';
import 'package:food_project/core/utils/colors.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({
    super.key,
    required this.text,
    this.iconData,
  });
  final String text;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const AppBarIcon(
          iconData: Icons.arrow_back_ios_new,
        ),
        Row(
          children: [
            Icon(iconData, size: 26, color: MyColors.kContainercolor),
            Text(
              text,
              style: TextStyle(color: MyColors.kContainercolor, fontSize: 22),
            )
          ],
        ),
        const AppBarIcon(iconData: FontAwesomeIcons.bell)
      ],
    );
  }
}
