import 'package:flutter/material.dart';
import 'package:food_project/features/bottom_Nav_Bar/Cutsom_Navbar_Elment.dart';
import 'package:food_project/features/bottom_Nav_Bar/Lists_For_Elment.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        clipBehavior: Clip.none,
        margin: const EdgeInsets.all(1),
        height: size.width * .180,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.15),
                  blurRadius: 30,
                  offset: const Offset(0, 10)),
            ],
            borderRadius: BorderRadius.circular(16)),
        child: ListView.builder(
          itemCount: ListForElment.body.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => InkWell(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () {
                setState(
                  () {
                    currentindex = index;
                  },
                );
              },
              child: CustomNavBarElment(
                currentindex: currentindex,
                index: index,
              )),
        ),
      ),
      body: ListForElment.body[currentindex],
    );
  }
}
