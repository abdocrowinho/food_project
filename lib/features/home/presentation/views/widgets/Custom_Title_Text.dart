import 'package:flutter/cupertino.dart';

class TittleText extends StatelessWidget {
  const TittleText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 35,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "   $text",
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
