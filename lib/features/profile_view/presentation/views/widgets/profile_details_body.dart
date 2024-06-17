import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/features/profile_view/presentation/view_model/cubits/profile_cupits/profile_cubit.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/CustomProfileInformtion.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/CustomProfileOptions.dart';

class ProfileViewBody extends StatefulWidget {
  const ProfileViewBody({super.key});

  @override
  State<ProfileViewBody> createState() => _ProfileViewBodyState();
}

class _ProfileViewBodyState extends State<ProfileViewBody> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            BlocProvider(
              create: (context) => ProfileCubit(),
              child: const CustomProfileInformtion(),
            ),
            const SizedBox(
              height: 50,
            ),
            const CustomProfileOptions()
          ],
        ),
      ),
    );
  }
}
