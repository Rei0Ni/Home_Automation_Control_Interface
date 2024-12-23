import 'package:get/get.dart';
import 'package:smart_home/app/presentation/dashboard/view/dashboard.dart';
import 'package:smart_home/app/presentation/splash/view/splash_screen.dart';
import 'package:smart_home/config/route/AppRoutes.dart';

class AppPages{
  static List<GetPage> pages = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.dashboard, page: () => const DashboardScreen()),
  ];
}