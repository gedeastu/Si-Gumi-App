import 'package:get/get.dart';

class searchResult{
  final String name;
  var condition = false.obs;
  searchResult({
    required this.name,
    required this.condition
  });
  // RxList<String Function()> data = List.generate(100, (index) => faker.person.name).obs;
}