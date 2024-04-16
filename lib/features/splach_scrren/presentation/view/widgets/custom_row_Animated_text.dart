import 'package:flutter/material.dart';

class CustomRowForAnimatedToText extends StatelessWidget {
  const CustomRowForAnimatedToText({
    super.key,
    required this.slidingAnimtion,
    required this.slidingAnimtion2,
  });

  final Animation<Offset> slidingAnimtion;
  final Animation<Offset> slidingAnimtion2;

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
