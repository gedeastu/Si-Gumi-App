import 'package:get/get.dart';

class TabBarController extends GetxController {
  final selectedTabIndex = 0.obs;

  void changeTabIndex(int index) {
    selectedTabIndex.value = index;
  }
}
