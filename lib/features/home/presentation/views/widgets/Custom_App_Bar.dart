import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:food_project/features/home/presentation/views/widgets/Custom_App_bar_Icon.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({
    super.key,
  });

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
            Icon(
              Icons.location_on_outlined,
              size: 26,
              color: Colors.white.withOpacity(.5),
            ),
            Text(
              'Location',
              style:
                  TextStyle(color: Colors.white.withOpacity(.5), fontSize: 22),
            )
          ],
        ),
        const AppBarIcon(iconData: FontAwesomeIcons.bell)
      ],
    );
  }
}
