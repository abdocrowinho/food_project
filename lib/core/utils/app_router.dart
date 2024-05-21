import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_project/core/utils/routs.dart';
import 'package:food_project/features/Category_View/presentation/view/category_view.dart';
import 'package:food_project/features/auth/login/presentation/views/login_view.dart';
import 'package:food_project/features/auth/signUp/presentation/views/signup_view.dart';
import 'package:food_project/features/bottom_Nav_Bar/menu_Bar.dart';
import 'package:food_project/features/details_view/presentation/views/details_View.dart';
import 'package:food_project/features/home/presentation/view_model/cubit/main_home_cupit_cubit.dart';
import 'package:food_project/features/home/presentation/views/home_view.dart';
import 'package:food_project/features/home/presentation/views/widgets/Catgory_model.dart';
import 'package:food_project/features/on_boarding/onboarding_view.dart';
import 'package:food_project/features/splach_scrren/presentation/view/splash_Screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final goRouter = GoRouter(
    initialLocation: "/",
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
        builder: (context, state) => BlocProvider(
          create: (context) => MainHomeCupitCubit(),
          child: const Homeview(),
        ),
      ),
      GoRoute(
        path: Routs.onboarding,
        builder: (context, state) => const OnBoardingView(),
      ),
      GoRoute(
        path: Routs.bottomNavBar,
        builder: (context, state) => const CustomBottomNavBar(),
      ),
      GoRoute(
        path: Routs.details,
        builder: (context, state) => const DetailsView(),
      ),
      GoRoute(
        path: Routs.catgory,
        builder: (context, state) {
          CatgoryModel catgoryModel = state.extra as CatgoryModel;
          return CatgoryView(
            model: catgoryModel,
          );
        },
      ),
    ],
  );
}
