import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:si_gumi_app/components/Guru/BottomNavbar.dart';
import 'package:si_gumi_app/controllers/Bottom_navbar_controller.dart';

class Root extends StatelessWidget {
  final bottomNavigationController = Get.put(BottomNavigationController());
  Root({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: Obx(() => bottomNavigationController.screens[bottomNavigationController.selectedIndex.value]),
        bottomNavigationBar: BottomNavbar(),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [],
        // ),
      ),
    );
  }
}