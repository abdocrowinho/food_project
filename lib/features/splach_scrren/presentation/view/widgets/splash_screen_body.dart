import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    super.initState();
    animtionForTextOne();
    animtionForText2();
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBuilder(
              animation: slidingAnimtion,
              builder: (BuildContext context, Widget? child) => SlideTransition(
                position: slidingAnimtion,
                child: Text(
                  'Food ',
                  style: TextStyle(
                      fontFamily: 'Alkatra',
                      color: Colors.transparent.withOpacity(.3),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            AnimatedBuilder(
              animation: slidingAnimtion2,
              builder: (BuildContext context, Widget? child) => SlideTransition(
                position: slidingAnimtion2,
                child: Text(
                  'App',
                  style: TextStyle(
                      fontFamily: 'Alkatra',
                      color: Colors.transparent.withOpacity(.3),
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  void animtionForTextOne() {
    animationControllerForText1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
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
}
