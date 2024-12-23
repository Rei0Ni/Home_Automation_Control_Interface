import 'package:smart_home/config/route/AppRoutes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 5), () {
      Get.offNamed(AppRoutes.dashboard);
    });
  }
}
