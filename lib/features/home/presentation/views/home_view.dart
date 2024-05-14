import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/CustomProfileOptions.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200,
              padding: EdgeInsets.symmetric(vertical: 20.h),
              decoration: const BoxDecoration(color: MyColors.kcolors3),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage("assets/profilepicture.jpg"),
                  ),
                  Expanded(
                    child: ListTile(
                      titleAlignment: ListTileTitleAlignment.center,
                      title: Text(
                        'Abdelrahman osama ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text(
                        'Ahlyua@gmail.com',
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
                    child: const CustomProfileOptions()))
          ],
        ),
      ),
      backgroundColor: MyColors.kscaffoldColor,
      body: HomeViewBody(),
    );
  }
}
