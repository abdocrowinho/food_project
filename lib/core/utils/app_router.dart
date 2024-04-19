import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/features/auth/login/presentation/views/login_view.dart';
import 'package:food_project/features/auth/signUp/presentation/views/signup_view.dart';
import 'package:food_project/features/bottom_Nav_Bar/menu_Bar.dart';
import 'package:food_project/features/home/presentation/views/home_view.dart';
import 'package:food_project/features/on_boarding/onboarding_view.dart';
import 'package:food_project/features/splach_scrren/presentation/view/splash_Screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: Routs.login,
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: Routs.signup,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: Routs.home,
        builder: (context, state) => const Homeview(),
      ),
      GoRoute(
        path: Routs.onboarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: Routs.bottomNavBar,
        builder: (context, state) => const CustomBottomNavBar(),
      ),
    ],
  );
}
