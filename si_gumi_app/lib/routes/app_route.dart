import 'package:get/get.dart';
import 'package:si_gumi_app/layouts/Guru/Home-Screen/Home_Layout.dart';
import 'package:si_gumi_app/layouts/Guru/Scan-Screen/Scan_Layout.dart';
import 'package:si_gumi_app/pages/Guru/Mobile/Scan-Screen/Camera_Page.dart';
import 'package:si_gumi_app/routes/route_name.dart';

class AppRoute{
  static final pages = [
    GetPage(name: RouteName.home_page_guru, page: () => HomeLayout(),),
    GetPage(name: RouteName.scan_page_guru, page: () => ScanLayout(),),
    GetPage(name: RouteName.camera_page_guru, page: () => CameraPageMobile(),)
  ];
}