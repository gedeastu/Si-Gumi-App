import 'dart:async';

import 'package:get/get.dart';

class SecondAnimationStatisticController extends GetxController{
  RxDouble containerHeight = 0.0.obs;
  bool isGrowing = true;
  late Timer? _timer;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _startTimer();
    
  }

  @override
  void onClose() {
    // TODO: implement onClose
    _timer?.cancel();
    super.onClose();
  }

  void _startTimer(){
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) { 
      containerHeight.value = isGrowing ? 121.5 : 0.0;
      isGrowing = true;
    });
  }
}

class FirstAnimationStatisticController extends GetxController{
  RxDouble containerHeight = 0.0.obs;
  bool isGrowing = true;
  late Timer? _timer;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _startTimer();
    
  }

  @override
  void onClose() {
    // TODO: implement onClose
    _timer?.cancel();
    super.onClose();
  }

  void _startTimer(){
    _timer = Timer.periodic(
      const Duration(seconds:1), 
      (timer) { 
        containerHeight.value = isGrowing ? 147.0 : 0.0;
        isGrowing = true;
      }
    );
  }
}


class ThirdAnimationStatisticController extends GetxController{
  RxDouble containerHeight = 0.0.obs;
  bool isGrowing = true;
  late Timer? _timer;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    _startTimer();
    
  }

  @override
  void onClose() {
    // TODO: implement onClose
    _timer?.cancel();
    super.onClose();
  }

  void _startTimer(){
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) { 
      containerHeight.value = isGrowing ? 92.0 : 0.0;
      isGrowing = true;
    });
  }
}