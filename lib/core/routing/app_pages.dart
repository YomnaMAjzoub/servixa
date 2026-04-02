import 'package:get/get.dart';
import 'package:servixass/core/routing/app_router.dart';
import 'package:servixass/features/auth/presentation/login_screen.dart';
import 'package:servixass/features/auth/presentation/otp_screen.dart';
import 'package:servixass/features/auth/presentation/register_screen.dart';
import 'package:servixass/features/home/presentation/screens/categories_screen.dart';
import 'package:servixass/features/home/presentation/screens/home_screen.dart';
import 'package:servixass/features/home/presentation/screens/items_screen.dart';
import 'package:servixass/features/main/presentation/screens/main_screen.dart';
import 'package:servixass/features/product/presentation/screens/details_screen.dart';
import 'package:servixass/features/startup/presentation/screens/onboarding_screens.dart';
import 'package:servixass/features/startup/presentation/screens/splash_screen.dart';

class AppPages {
  static final pages = [
    GetPage(name: AppRouter.splash, page: () => SplashScreen()),

    GetPage(name: AppRouter.onboarding, page: () => OnboardingScreen()),

    GetPage(name: AppRouter.login, page: () => LoginScreen()),
    GetPage(name: AppRouter.register, page: () => RegisterScreen()),
    GetPage(name: AppRouter.otp, page: () => VerificationScreen()),

    GetPage(name: AppRouter.main, page: () => MainScreen()),

    GetPage(name: AppRouter.home, page: () => Home()),

    GetPage(name: AppRouter.product, page: () => DetailsScreen()),

    GetPage(name: AppRouter.categor, page: () => SubCategoryScreen()),

    GetPage(name: AppRouter.sub, page: () => SubCategoryScreen()),
    GetPage(
      name: AppRouter.items,
      page: () =>  ItemsScreen(),
    ),
  ];
}
