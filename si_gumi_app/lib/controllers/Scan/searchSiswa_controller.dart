import 'package:faker/faker.dart';
import 'package:get/get.dart';
import 'package:si_gumi_app/models/Scan/searchResult_model.dart';

class SearchSiswaController extends GetxController{
  // final data = List.generate(100, (index) => faker.person.name);
  // final searchValue = "".obs;
  // final RxString selectedStudent = "".obs;
  // final TextEditingController textEditingController = TextEditingController();
  // final Rx<TextEditingController> _controller = TextEditingController().obs;
  // void setSelectedStudent(String student){
  //   selectedStudent.value = student; 
  // }

  final dataSiswa = List.generate(5, (index) => searchResult(name:Faker().person.name()));
}