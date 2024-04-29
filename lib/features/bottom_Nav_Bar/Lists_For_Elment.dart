import 'package:flutter/material.dart';
import 'package:food_project/features/cart_view/presentation/views/cart_View.dart';
import 'package:food_project/features/favorit_view/presentation/views/favorit_View.dart';
import 'package:food_project/features/home/presentation/views/home_view.dart';
import 'package:food_project/features/profile_view/presentation/views/Profile_view.dart';

abstract class ListForElment {
  static const List<IconData> listoficon = [
    Icons.home,
    Icons.favorite_border,
    Icons.shopping_cart_outlined,
    Icons.person
  ];
  static const List<String> iconlabel = ['Home', 'favorite', 'Cart', 'Profile'];
  static const List<Widget> body = [
    Homeview(),
    FavoritView(),
    CartView(),
    ProfileView()
  ];
}
