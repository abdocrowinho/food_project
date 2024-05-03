import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_project/core/utils/colors.dart';

class CustomContainerAddToCart extends StatelessWidget {
  const CustomContainerAddToCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      color: Colors.white,
      height: 90,
      child: ListTile(
        title: const Text(
          'Total Price',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        subtitle: const Text(
          r'$1.22',
          style: TextStyle(
              color: MyColors.kcolors3,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        trailing: SizedBox(
          width: 220,
          height: 50,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: MyColors.kContainercolor,
              backgroundColor: MyColors.kcolors3,
            ),
            child: const Text(
              'Add To Cart',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
