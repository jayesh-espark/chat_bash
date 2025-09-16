import 'package:get/get.dart';

import '../../../../core/utills/custom_print.dart';
import '../../../routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    CustomPrintClass.print("SplashController init");
    super.onInit();
    CustomPrintClass.print("SplashController init completion");
    _navigateToHome();
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      CustomPrintClass.print("Routes.HOME before");
      Get.offNamed(Routes.home);
    });
  }
}
