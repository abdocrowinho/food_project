import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/profile_view/presentation/view_model/cubits/profile_cupits/profile_cubit.dart';

class OptionsForNewImage extends StatelessWidget {
  const OptionsForNewImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      left: 15,
      child: Container(
        decoration: BoxDecoration(color: MyColors.kContainercolor),
        child: Column(
          children: [
            MaterialButton(
              onPressed: () {
                BlocProvider.of<ProfileCubit>(context)
                    .updateProfileImageByGallery();
              },
              child: const Text(
                " gallery ",
                style: TextStyle(color: MyColors.kcolors3),
              ),
            ),
            SizedBox(
                width: 80.w,
                child: Divider(
                  height: 0.h,
                )),
            MaterialButton(
              onPressed: () {
                BlocProvider.of<ProfileCubit>(context)
                    .updateProfileImageByCamera();
              },
              child: const Text(
                "take a photo",
                style: TextStyle(color: MyColors.kcolors3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
