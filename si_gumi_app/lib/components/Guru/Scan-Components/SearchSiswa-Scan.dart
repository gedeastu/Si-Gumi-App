// import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:si_gumi_app/controllers/Scan/SearchSiswa_controller.dart';
// import 'package:si_gumi_app/models/Scan/searchResult_model.dart';

class SearchSiswa extends StatelessWidget {
  SearchSiswa({super.key});
  final SearchSiswaController controller = Get.put(SearchSiswaController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          onChanged: (value) {
            Get.find<SearchSiswaController>().setSearchValue(value);
          },
          decoration: InputDecoration(
                suffixIcon: IconButton(onPressed: (){
        
                }, icon: Icon(Icons.search)),
                hintStyle: GoogleFonts.poppins(),
                contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Color.fromARGB(255, 190, 242, 235),width: 1)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Color.fromARGB(255, 79, 170, 253))),
                hintText: "Cari nama siswa"
          ),
        ),
        SizedBox(height: 16,),
        Container(
          height: 1000,
          child: Obx((){
            final controller = Get.find<SearchSiswaController>().getFilteredStudents();
            return ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final student = controller[index];
                return ListTile(
                  title: Text(student.name),
                  // onTap: () {
                  //   final onTapController = Get.find<SearchSiswaController>();
                  //   onTapController.setSearchValue(student.name);
                  //   FocusScope.of(context).unfocus();
                  // },
                );
              }, 
              separatorBuilder: (context, index) {
                return Divider();
              }, 
              itemCount: controller.length);
          }),
        )
        // Autocomplete<searchResult>(
        //   optionsBuilder:(textEditingValue) {
        //     if (textEditingValue.text.isEmpty) {
        //       return List.empty();
        //     } else {
        //       return controller.dataSiswa.where((student) => student.name.toLowerCase().contains(textEditingValue.text.toLowerCase()));
        //     }
        //   },
        //   fieldViewBuilder: (context, textEditingController, focusNode, onFieldSubmitted) {
        //     return TextField(
        //       controller: textEditingController,
        //       focusNode: focusNode,
        //       onEditingComplete:  onFieldSubmitted,
        //       decoration: InputDecoration(
        //         suffixIcon: IconButton(onPressed: (){
        
        //         }, icon: Icon(Icons.search)),
        //         hintStyle: GoogleFonts.poppins(),
        //         contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        //         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Color.fromARGB(255, 190, 242, 235),width: 1)),
        //         focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Color.fromARGB(255, 79, 170, 253))),
        //         hintText: "Cari nama siswa"
        //       ),
        //     );
        //   },
        //   optionsViewBuilder: (context, onSelected, options) {
        //     return ListView.separated(
        //       scrollDirection: Axis.vertical,
        //       padding: EdgeInsets.symmetric(vertical: 20),
        //       itemBuilder: (BuildContext context, int index) {
        //         final option = options.elementAt(index);
        //         return Material(
        //           child: ListTile(
        //             title: Text(option.name),
        //             contentPadding: EdgeInsets.all(20),
        //           ),
        //         );
        //       }, 
        //       separatorBuilder: (BuildContext context, int index) {
        //         return Divider();
        //       }, 
        //       itemCount: options.length
        //     );
        //   },
        //   onSelected: (option) => debugPrint(option.name),
        //   displayStringForOption: ((option) => option.name),
        // )
        // TextField(
        //         maxLines: 1,
        //         decoration: InputDecoration( 
        //         suffixIcon: IconButton(onPressed: (){
        
        //         }, icon: Icon(Icons.search)),
        //         hintStyle: GoogleFonts.poppins(),
        //         hintText: "Cari Nama Siswa",
        //         contentPadding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        //         enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Color.fromARGB(255, 190, 242, 235),width: 1)),
        //         focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Color.fromARGB(255, 79, 170, 253)))
        //                 // contentPadding: EdgeInsets.all(20),
        //                 // border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Color.fromARGB(255, 190, 242, 235),width: 1))
        //         ),
        //   ),
      ],
    );
  }
}