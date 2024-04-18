import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';
import 'package:go_router/go_router.dart';

class CustomRowWithTextButton extends StatelessWidget {
  const CustomRowWithTextButton({
    super.key,
  });

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
              GoRouter.of(context).push('/login');
            },
            child: const Text(
              'LogIn Now',
              style: TextStyle(color: MyColors.kcolors3, fontSize: 15),
            ))
      ],
    );
  }
}
