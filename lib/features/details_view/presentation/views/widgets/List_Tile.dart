import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Prodcut Details',
        style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
          style: TextStyle(color: Colors.grey),
          softWrap: true,
          'Oranges are round citrus fruits known for their sweet and tangy taste. They are rich in vitamin C, fiber, and antioxidants. Oranges can be eaten fresh, juiced, or used in various culinary preparations. They are cultivated worldwide.'),
    );
  }
}
