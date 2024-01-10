import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:si_gumi_app/controllers/Bottom_navbar_controller.dart';

class BottomNavbar extends StatelessWidget {
  BottomNavbar({super.key});
  final controller = Get.find<BottomNavigationController>();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      height: 80,
      decoration: BoxDecoration(
      boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5), // Color of the shadow
        spreadRadius: 5, // Spread radius
        blurRadius: 7, // Blur radius
        offset: Offset(0, 3), // Offset of the shadow
        ),
        ],
        borderRadius: BorderRadius.circular(20)
      ),
      child: 
      NavigationBar(
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: controller.onNavigateTapped,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.qr_code_scanner), label: "Scanner"),
          NavigationDestination(icon: Icon(Icons.home), label: "Penghargaan"),
          NavigationDestination(icon: Icon(Icons.home), label: "Profile")
        ],
      )
      // BottomNavigationBar(
      //   iconSize: 25,
      //   backgroundColor: Colors.white,
      //   unselectedItemColor: Color.fromARGB(255, 71, 71, 71),
      //   selectedItemColor: Colors.blue,
      //   currentIndex: controller.selectedIndex.value,
      //   onTap: controller.onNavigateTapped,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home'
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.qr_code_scanner_rounded),
      //       label: 'Scanner'
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.leaderboard_rounded),
      //       label: 'Penghargaan'
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle_rounded),
      //       label: 'Profile'
      //     ),
      //   ]
      // ),
    ));
  }
}