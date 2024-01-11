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
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border.symmetric(vertical: BorderSide(color: Colors.black12,width: 2))
      ),
      child: 
      NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: controller.selectedIndex.value,
        onDestinationSelected: controller.onNavigateTapped,
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.qr_code_scanner), label: "Scanner"),
          NavigationDestination(icon: Icon(Icons.leaderboard), label: "Penghargaan"),
          NavigationDestination(icon: Icon(Icons.account_circle), label: "Profile")
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