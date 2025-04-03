import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/components/Navigationbar.dart';
import 'package:newsapp/controller/BottomNavigationController.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
      BottomNavController controller = Get.put(BottomNavController());

    return Scaffold(
      floatingActionButton: MyBottomnav(),
      body: Obx(() => controller.pages[controller.currentIndex.value]
      ),
    );
  }
}