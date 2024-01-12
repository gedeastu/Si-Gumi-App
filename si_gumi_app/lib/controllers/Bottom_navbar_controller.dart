import 'package:get/get.dart';
import 'package:si_gumi_app/layouts/Guru/Home-Screen/Home_Layout.dart';
import 'package:si_gumi_app/layouts/Guru/Scan-Screen/Scan_Layout.dart';
// import 'package:si_gumi_app/pages/try.dart';

class BottomNavigationController extends GetxController{
  final selectedIndex = 0.obs;
  final screens = [
    const HomeLayout(),
    const ScanLayout(),
    // SearchPage(),
    const HomeLayout(),
    const ScanLayout()
  ];

  void onNavigateTapped(int index){
    selectedIndex.value = index;
  }
}