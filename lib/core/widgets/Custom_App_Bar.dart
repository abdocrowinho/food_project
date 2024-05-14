import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:food_project/core/widgets/Custom_App_bar_Icon.dart';
import 'package:food_project/core/utils/colors.dart';

class AppBarActions extends StatefulWidget {
  const AppBarActions({
    super.key,
    required this.text,
    this.iconData,
    required this.bars,
  });
  final bool bars;
  final String text;
  final IconData? iconData;

  @override
  State<AppBarActions> createState() => _AppBarActionsState();
}

class _AppBarActionsState extends State<AppBarActions> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        widget.bars == true
            ? AppBarIcon(
                ontap: () {
                  Scaffold.of(context).openDrawer();
                  setState(() {
                    Drawer(
                      backgroundColor: Colors.amber,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.amber),
                        height: 252,
                        width: 250,
                        child: ListView.builder(
                          itemCount: 7,
                          itemBuilder: (BuildContext context, int index) {
                            return Icon(Icons.abc);
                          },
                        ),
                      ),
                    );
                  });
                },
                iconData: FontAwesomeIcons.bars,
              )
            : SizedBox(
                width: 45.w,
              ),
        Row(
          children: [
            Icon(widget.iconData, size: 26, color: MyColors.kContainercolor),
            Text(
              widget.text,
              style: TextStyle(color: MyColors.kContainercolor, fontSize: 22),
            )
          ],
        ),
        const AppBarIcon(iconData: FontAwesomeIcons.bell)
      ],
    );
  }
}
