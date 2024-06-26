import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:go_router/go_router.dart';

class CustomLoginNowButton extends StatelessWidget {
  const CustomLoginNowButton({
    super.key,
    required this.tittel,
  });
  final String tittel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          '    Alradey Have An Email',
          style:
              TextStyle(color: MyColors.kcolors3.withOpacity(.8), fontSize: 13),
        ),
        TextButton(
            style: TextButton.styleFrom(
                elevation: 0, padding: const EdgeInsets.all(5)),
            onPressed: () {
              GoRouter.of(context).pop();
            },
            child: Text(
              tittel,
              style: const TextStyle(color: MyColors.kcolors3, fontSize: 15),
            ))
      ],
    );
  }
}
