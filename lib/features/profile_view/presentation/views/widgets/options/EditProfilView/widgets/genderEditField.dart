import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/auth/view_model/models/User_Model.dart';
import 'package:food_project/features/profile_view/presentation/view_model/cubits/profile_cupits/profile_cubit.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class GenderEditFaild extends StatefulWidget {
  const GenderEditFaild({
    super.key,
    required this.onChanged,
    required this.userModel,
  });
  final void Function(String?) onChanged;
  final UserModel userModel;
  @override
  State<GenderEditFaild> createState() => _GenderEditFaildState();
}

class _GenderEditFaildState extends State<GenderEditFaild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: MyColors.kcolors3),
          borderRadius: BorderRadius.circular(4)),
      height: 50,
      width: 350,
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
              hint: Text(context.watch<ProfileCubit>().selcatedGender ??
                  widget.userModel.gender ??
                  'selcet a gender'),
              items: items,
              onChanged: widget.onChanged),
        ),
      ),
    );
  }

  List<DropdownMenuItem<String>>? items = const [
    DropdownMenuItem(
      value: 'male',
      child: Text('male'),
    ),
    DropdownMenuItem(
      value: 'female',
      child: Text('female'),
    )
  ];
}
