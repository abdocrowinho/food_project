import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)),
      /////////////////////////
      child: TextField(
        decoration: InputDecoration(
            hintText: '  Search your Grocires',
            hintStyle: const TextStyle(color: MyColors.kcolors3),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: MyColors.kcolors3,
              ),
            ),
            border: colorForborderHasNoError(),
            focusedBorder: colorForborderHasNoError(),
            enabledBorder: colorForborderHasNoError()),
      ),
    );
  }

  OutlineInputBorder colorForborderHasNoError() {
    return OutlineInputBorder(
        borderSide: const BorderSide(color: MyColors.kcolors3),
        borderRadius: BorderRadius.circular(40));
  }
}
