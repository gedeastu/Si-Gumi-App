import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:si_gumi_app/models/Scan/camera_model.dart';

class CameraController extends GetxController{
  final Rx<XFile?> imageFile = Rx<XFile?>(null);

  Future getImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if(pickedFile == null)return;

    imageFile.value = File(pickedFile.path) as XFile?;
  }
}