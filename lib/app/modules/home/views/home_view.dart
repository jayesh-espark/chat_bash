import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.login),
            onPressed: () => Get.toNamed(Routes.login),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Count: ${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: controller.decrement,
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: controller.reset,
                  child: const Text('Reset'),
                ),
                ElevatedButton(
                  onPressed: controller.increment,
                  child: const Text('+'),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Obx(
              () =>
                  controller.isLoading.value
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                        onPressed: controller.simulateNetworkCall,
                        child: const Text('Simulate Network Call'),
                      ),
            ),
          ],
        ),
      ),
    );
  }
}
