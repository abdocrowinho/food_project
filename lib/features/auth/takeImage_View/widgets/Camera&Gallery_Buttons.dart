import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/auth/takeImage_View/view_model/cubit/Take_image_Cubit/take_image_cubit.dart';

class CameraAndGalleryButtons extends StatelessWidget {
  const CameraAndGalleryButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MaterialButton(
          onPressed: () {
            BlocProvider.of<TakeImageCubit>(context).takeImageFromUserCamera();
          },
          color: MyColors.kcolors3,
          child: Text(
            'Camera',
            style: TextStyle(fontSize: 16.sp, color: MyColors.kcolors0),
          ),
        ),
        MaterialButton(
          onPressed: () {
            BlocProvider.of<TakeImageCubit>(context).takeImageFromUserGallery();
          },
          color: MyColors.kcolors3,
          child: Text(
            'Gallery',
            style: TextStyle(fontSize: 16.sp, color: MyColors.kcolors0),
          ),
        )
      ],
    );
  }
}
