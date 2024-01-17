import 'package:get/get.dart';

class SurpriseController extends GetxController{
  var isShowingConfetti = false.obs;

  void toggleConfetti() {
    isShowingConfetti.value = !isShowingConfetti.value;
  }
}