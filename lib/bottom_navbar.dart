import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:whatsapp_ui/features/shop/screens/calls/calls.dart';
import 'package:whatsapp_ui/features/shop/screens/chat/chat.dart';
import 'package:whatsapp_ui/features/shop/screens/communties/community.dart';
import 'package:whatsapp_ui/features/shop/screens/updates/updates.dart';
import 'package:whatsapp_ui/utils/constants/colors.dart';
import 'utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());
    return Scaffold(
      body: PageView(           
            controller: controller.pageController,
            onPageChanged: (index) {
              controller.selectedIndex.value = index;
            },
            children: controller.screens,
          ),
      
      

      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 75,
          elevation: 0,
          backgroundColor: darkMode ? PColors.primaryBackground : PColors.white,
          indicatorColor: darkMode ? PColors.secondary.withOpacity(0.2) : const Color.fromRGBO(142, 255, 145, 1).withOpacity(0.4),
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.onItemTapped(index),
          destinations: const [
            NavigationDestination(
                icon: Icon(Icons.chat, size: 25), label: 'Chat'),
            NavigationDestination(
                icon: Icon(Icons.update, size: 30), label: 'Updates'),
            NavigationDestination(
                icon: Icon(Icons.groups, size: 30), label: 'Communities'),
            NavigationDestination(
              icon: Icon(
                Iconsax.call,
                size: 25,
              ),
              label: 'Calls',
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {

  // Variables
  final RxInt selectedIndex = 0.obs;
  final PageController pageController = PageController(initialPage: 0 );
  final screens = [
    const HomeScreen(),
    const UpdateScreen(),
    const CommunityScreen(),
  const CallScreen(),
  ];

  // Function
  void onItemTapped(int index) {
    selectedIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }
}