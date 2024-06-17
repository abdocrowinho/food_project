import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/home/presentation/views/widgets/List_of_options_for_SideBar.dart';

class CustomSideBar extends StatefulWidget {
  const CustomSideBar({
    super.key,
  });

  @override
  State<CustomSideBar> createState() => _CustomSideBarState();
}

class _CustomSideBarState extends State<CustomSideBar> {
  String username = ' ';
  String email = '';
  String img = '';

  @override
  void initState() {
    setState(() {});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            padding: EdgeInsets.symmetric(vertical: 20.h),
            decoration: const BoxDecoration(color: MyColors.kcolors3),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/profilepicture.jpg"),
                ),
                Expanded(
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    title: Text(
                      username,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                    subtitle: Text(
                      email,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.w),
                  child: const CustomSideOptions()))
        ],
      ),
    );
  }
}
