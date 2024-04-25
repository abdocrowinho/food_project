import 'package:flutter/material.dart';

class ConstSizedBox extends StatelessWidget {
  const ConstSizedBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 30,
    );
  }
}
