import 'package:amazon/src/constants/colors.dart';
import 'package:amazon/src/features/homepage/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationMenu extends StatelessWidget {
  const BottomNavigationMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 12.0, top: 6.0),

        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.8),
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Obx(
                  () => NavigationBar(
                height: 80,
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index)=> controller.selectedIndex.value = index,

                destinations: const [
                  NavigationDestination(icon: Icon(Iconsax.home), label: ''),
                  NavigationDestination(icon: Icon(Iconsax.lamp_on), label: ''),
                  NavigationDestination(icon: Icon(Iconsax.user), label: ''),
                  NavigationDestination(icon: Icon(Iconsax.shopping_cart), label: ''),
                  NavigationDestination(icon: Icon(Icons.menu), label: ''),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[
      controller.selectedIndex.value
      ],
      ),
    );
  }
}

class NavigationController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    const HomePage(),
    Container(color: MyAColors.accentColor),
    Container(color: MyAColors.primaryColor),
    Container(color: MyAColors.secondaryColor),
    Container(color: MyAColors.buttonColor),
    Container(color: MyAColors.primaryColor),
  ];
}