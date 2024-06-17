import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/features/auth/takeImage_View/view_model/cubit/Take_image_Cubit/take_image_cubit.dart';
import 'package:food_project/features/auth/takeImage_View/widgets/Accepte_Button.dart';
import 'package:food_project/features/auth/takeImage_View/widgets/Camera&Gallery_Buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/auth/view_model/cubit/Auth_cubit/auth_cubit.dart';

class TakeImageBody extends StatefulWidget {
  const TakeImageBody({super.key});

  @override
  State<TakeImageBody> createState() => _TakeImageBodyState();
}

class _TakeImageBodyState extends State<TakeImageBody> {
  TextEditingController img = TextEditingController();
  String Pathimage = "assets/TakeAPohto.png";
  bool profileLoadig = false;
  @override
  Widget build(BuildContext context) {
    var TakeImageCubitUsage = BlocProvider.of<TakeImageCubit>(context);

    var Cubit = BlocProvider.of<AuthCubit>(context);
    return SafeArea(
      child: Column(
        children: [
          ListTile(
            title: Text(
              'Welcomr sir , ${Cubit.userName.text}',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
            ),
            subtitle: Text(
              "Welcome to our application! We are delighted to have you on board. To fully experience and make the most of our application, we kindly request that you upload a personal photo. You can easily do this by selecting a photo from your gallery or by capturing a new photo using your device's camera. Thank you in advance, and we look forward to your exciting journey with our application!",
              style: TextStyle(fontSize: 18.sp),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          BlocConsumer<TakeImageCubit, TakeImageState>(
            listener: (context, state) {
              // if (state is NotNull) {
              //   TakeImageCubitUsage.defultimage = state.pathImage;
              // }
            },
            builder: (context, state) {
              if (state is Loading) {
                return const CircularProgressIndicator();
              }
              if (state is NotNull) {
                return ClipOval(
                  child: SizedBox(
                    height: 144.h,
                    width: 144.w,
                    child: Image.file(
                      BlocProvider.of<TakeImageCubit>(context).file!,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              } else {
                return CircleAvatar(
                  backgroundImage: AssetImage(TakeImageCubitUsage.defultimage),
                  radius: 72,
                  backgroundColor: MyColors.backgroundItems,
                );
              }
            },
          ),
          SizedBox(
            height: 15.h,
          ),
          const CameraAndGalleryButtons(),
          const SizedBox(
            height: 30,
          ),
          AccepteButton(),
        ],
      ),
    );
  }
}
