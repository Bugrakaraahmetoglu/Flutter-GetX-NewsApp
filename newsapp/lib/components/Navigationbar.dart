import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/controller/BottomNavigationController.dart';

class MyBottomnav extends StatelessWidget {
  const MyBottomnav({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
            width: 250,
            height: 60,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer ,   
              borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      controller.currentIndex.value = 0;
                    },
                    child: Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: controller.currentIndex.value == 0 
                        ? Theme.of(context).colorScheme.primary 
                        : null,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.home,
                      color: controller.currentIndex.value == 0
                      ? Theme.of(context).colorScheme.onBackground
                      : Theme.of(context).colorScheme.secondaryContainer,
                      size: 30,
                      ),
                    ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                      controller.currentIndex.value = 1;
                    },
                    child: Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: controller.currentIndex.value == 1 
                        ? Theme.of(context).colorScheme.primary 
                        : null,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.search,
                      color: controller.currentIndex.value == 1
                      ? Theme.of(context).colorScheme.onBackground
                      : Theme.of(context).colorScheme.secondaryContainer,
                      size: 30,
                      ),
                    ),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                      controller.currentIndex.value = 2;
                    },
                    child: Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.bounceInOut,
                      width: 40,
                      height: 40,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: controller.currentIndex.value == 2 
                        ? Theme.of(context).colorScheme.primary 
                        : null,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Icon(Icons.bookmark,
                      color: controller.currentIndex.value == 2
                      ? Theme.of(context).colorScheme.onBackground
                      : Theme.of(context).colorScheme.secondaryContainer,
                      size: 30,
                      ),
                    ),
                    ),
                  ),
        ],
        ),
          ),
      ],
    );
  }
}