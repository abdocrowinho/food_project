import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/app_router.dart';
import 'package:food_project/core/utils/colors.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            theme: ThemeData(
              fontFamily: 'Alkatra',
              primaryColor: MyColors.kcolors3,
            ),
            debugShowCheckedModeBanner: false,
            routerConfig: AppRouter.goRouter,
          );
        });
  }
}
