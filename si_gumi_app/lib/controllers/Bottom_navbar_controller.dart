import 'package:get/get.dart';
import 'package:si_gumi_app/layouts/Guru/Home-Screen/Home_Layout.dart';
import 'package:si_gumi_app/layouts/Guru/Penghargaan-Screen/Penghargaan_Layout.dart';
import 'package:si_gumi_app/layouts/Guru/Profil-Screen/Profil_Layout.dart';
import 'package:si_gumi_app/layouts/Guru/Scan-Screen/Scan_Layout.dart';
// import 'package:si_gumi_app/pages/Guru/Mobile/Scan-Screen/Camera_Page.dart';
// import 'package:si_gumi_app/pages/try.dart';

class BottomNavigationController extends GetxController{
  final selectedIndex = 0.obs;
  final screens = [
    const HomeLayout(),
    const ScanLayout(),
    // SearchPage(),
    const PenghargaanLayout(),
    const ProfilLayout(),
    // CameraPageMobile()
  ];

  void onNavigateTapped(int index){
    selectedIndex.value = index;
  }
}