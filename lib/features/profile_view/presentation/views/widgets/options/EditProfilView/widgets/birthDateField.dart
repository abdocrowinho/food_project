import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:food_project/features/auth/view_model/models/User_Model.dart';
import 'package:food_project/features/profile_view/presentation/view_model/cubits/profile_cupits/profile_cubit.dart';

class BirthDateEditFaild extends StatefulWidget {
  const BirthDateEditFaild({
    super.key,
    required this.user,
  });
  final UserModel user;

  @override
  State<BirthDateEditFaild> createState() => _BirthDateEditFaildState();
}

class _BirthDateEditFaildState extends State<BirthDateEditFaild> {
  @override
  void initState() {
    BlocProvider.of<ProfileCubit>(context).setDatetakedFromUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var cubit = BlocProvider.of<ProfileCubit>(context);
    var lisnter = context.watch<ProfileCubit>();
    DateTime lastSelctedDate = DateTime.parse(widget.user.birthDate!);
    return TextFormField(
      readOnly: true,
      onTap: () async {
        cubit.newDate = await showDatePicker(
            context: context,
            firstDate: DateTime(2000),
            lastDate: DateTime(2100));
        cubit.setDatetakedFromUser();
      },
      validator: (value) {
        return null;
      },
      decoration: InputDecoration(
        hintText:
            "${lastSelctedDate.day} / ${lastSelctedDate.month} / ${lastSelctedDate.year} ",
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.kcolors3)),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.kcolors3)),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.kcolors3),
        ),
      ),
    );
  }
}
