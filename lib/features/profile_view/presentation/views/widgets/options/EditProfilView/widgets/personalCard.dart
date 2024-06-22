import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/auth/view_model/models/User_Model.dart';
import 'package:food_project/features/profile_view/presentation/view_model/cubits/profile_cupits/profile_cubit.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/options/EditProfilView/widgets/InformetionUserInPersonalCard.dart';

class PersonalCard extends StatefulWidget {
  const PersonalCard({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  State<PersonalCard> createState() => _PersonalCardState();
}

class _PersonalCardState extends State<PersonalCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 30,
      color: MyColors.backgroundItems,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: MyColors.kcolors3)),
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InformetionUserInPersonalCard(widget: widget),
                SizedBox(
                  width: 20.w,
                ),
                InkWell(
                  onTap: () {
                    BlocProvider.of<ProfileCubit>(context)
                        .ifNeedToChangeImage();
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      widget.user.img!,
                      height: 100.h,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
