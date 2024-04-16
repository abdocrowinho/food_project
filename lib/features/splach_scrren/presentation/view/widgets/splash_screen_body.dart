import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplachScreenBody extends StatelessWidget {
  const SplachScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 80,
        ),
        Container(
          height: 300,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/logo.png'),
            ),
          ),
        ),
        Text(
          'Food App',
          style: TextStyle(
              fontFamily: 'Alkatra',
              color: Colors.transparent.withOpacity(.3),
              fontSize: 40,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
