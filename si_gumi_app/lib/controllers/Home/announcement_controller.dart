import 'package:get/get.dart';
import 'package:si_gumi_app/models/Home/Home_models.dart';
class AnnouncementController extends GetxController{
  final model = Announcement();
  
  void isTapped(){
    model.isTapped.value = !model.isTapped.value;
  }
}