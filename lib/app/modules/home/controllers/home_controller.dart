import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  final isLoading = false.obs;

  void increment() {
    count.value++;
  }

  void decrement() {
    count.value--;
  }

  void reset() {
    count.value = 0;
  }

  Future<void> simulateNetworkCall() async {
    isLoading.value = true;
    await Future.delayed(const Duration(seconds: 2));
    isLoading.value = false;
    Get.snackbar(
      'Success',
      'Network call completed!',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
