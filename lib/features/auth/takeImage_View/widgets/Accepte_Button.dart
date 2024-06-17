import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/features/auth/takeImage_View/view_model/cubit/Take_image_Cubit/take_image_cubit.dart';
import 'package:food_project/features/auth/view_model/cubit/Auth_cubit/auth_cubit.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AccepteButton extends StatelessWidget {
  const AccepteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var takeImageCubitUsage = BlocProvider.of<TakeImageCubit>(context);

    return MaterialButton(
      onPressed: () async {
        BlocProvider.of<AuthCubit>(context)
            .addUserToFireBase(takeImageCubitUsage.url);
        SharedPreferences pref = await SharedPreferences.getInstance();
        pref.setBool('isLogedIn', true);
        // ignore: use_build_context_synchronously
        context.go(Routs.bottomNavBar);
      },
      color: MyColors.kcolors3,
      child: Text(
        " Accepte",
        style: TextStyle(fontSize: 16.sp, color: Colors.white),
      ),
    );
  }
}
