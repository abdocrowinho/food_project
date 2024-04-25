import 'package:flutter/material.dart';
import 'package:food_project/features/home/presentation/views/widgets/home_view_body.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffF1F7F3),
      body: HomeViewBody(),
    );
  }
}
