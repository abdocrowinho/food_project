import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_project/features/splach_scrren/presentation/view/widgets/custom_row_Animated_text.dart';
import 'package:go_router/go_router.dart';

class SplachScreenBody extends StatefulWidget {
  const SplachScreenBody({super.key});

  @override
  State<SplachScreenBody> createState() => _SplachScreenBodyState();
}

class _SplachScreenBodyState extends State<SplachScreenBody>
    with TickerProviderStateMixin {
  late AnimationController animationControllerForText1;
  late Animation<Offset> slidingAnimtion;
  late AnimationController animationControllerForText2;
  late Animation<Offset> slidingAnimtion2;
  @override
  void initState() {
    animtionForTextOne();
    animtionForText2();
    navigatetohome();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    animationControllerForText1.dispose();
    animationControllerForText2.dispose();
  }

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
        CustomRowForAnimatedToText(
            slidingAnimtion: slidingAnimtion,
            slidingAnimtion2: slidingAnimtion2)
      ],
    );
  }

  void animtionForTextOne() {
    animationControllerForText1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    slidingAnimtion =
        Tween<Offset>(begin: const Offset(3, 5), end: Offset(0, 0))
            .animate(animationControllerForText1);
    animationControllerForText1.forward();
  }

  void animtionForText2() {
    animationControllerForText2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    slidingAnimtion2 =
        Tween<Offset>(begin: const Offset(-3, 5), end: Offset(0, 0))
            .animate(animationControllerForText2);
    animationControllerForText2.forward();
  }

  void navigatetohome() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      context.go('/onboarding');
    });
  }
}
