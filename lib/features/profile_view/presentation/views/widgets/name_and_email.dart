import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NameAndEmail extends StatelessWidget {
  const NameAndEmail({
    super.key,
    required this.userName,
    required this.email,
  });

  final String userName;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListTile(
        titleAlignment: ListTileTitleAlignment.center,
        title: Text(
          userName,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.sp),
        ),
        subtitle: Text(
          email,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.sp),
        ),
      ),
    );
  }
}
