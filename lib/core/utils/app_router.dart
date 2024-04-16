import 'package:food_project/features/auth/login/presentation/views/login_view.dart';
import 'package:food_project/features/auth/signUp/presentation/views/signup_view.dart';
import 'package:food_project/features/home/presentation/views/home_view.dart';
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
        path: '/login',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: '/signup',
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const Homeview(),
      ),
    ],
  );
}
