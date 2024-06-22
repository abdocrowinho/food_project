import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/features/profile_view/presentation/view_model/cubits/profile_cupits/profile_cubit.dart';
import 'package:food_project/features/profile_view/presentation/views/widgets/options/EditProfilView/widgets/personalCard.dart';

class InformetionUserInPersonalCard extends StatelessWidget {
  const InformetionUserInPersonalCard({
    super.key,
    required this.widget,
  });

  final PersonalCard widget;

  @override
  Widget build(BuildContext context) {
    DateTime? birthDate = DateTime.parse(widget.user.birthDate!);
    var lisenter = context.watch<ProfileCubit>();
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.user.name,
          style: TextStyle(
            fontSize: 15.sp,
          ),
        ),
        Text(
          widget.user.email,
          style: TextStyle(
            fontSize: 15.sp,
          ),
        ),
        Text(
          widget.user.gender ?? 'gender is known',
          style: TextStyle(
            fontSize: 15.sp,
          ),
        ),
        Text(
            'birth date : ${birthDate.day} / ${birthDate.month} / ${birthDate.year} ')
      ],
    );
  }
}
