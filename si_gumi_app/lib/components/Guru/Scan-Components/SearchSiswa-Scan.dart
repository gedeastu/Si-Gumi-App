import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:image_picker/image_picker.dart';
import 'package:si_gumi_app/controllers/Scan/SearchSiswa_controller.dart';
import 'package:si_gumi_app/controllers/Scan/camera_controller.dart';
import 'package:si_gumi_app/pages/Guru/Mobile/Scan-Screen/Camera_Page.dart';
// import 'package:si_gumi_app/pages/Guru/Mobile/Scan-Screen/Camera_Page.dart';

class SearchSiswa extends StatelessWidget {
  SearchSiswa({super.key});
  final CameraController controllerCamera = Get.put(CameraController());
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
        
                }, icon: const Icon(Icons.search)),
                hintStyle: GoogleFonts.poppins(),
                contentPadding: const EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Color.fromARGB(255, 190, 242, 235),width: 1)),
                focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: const BorderSide(color: Color.fromARGB(255, 79, 170, 253))),
                hintText: "Cari nama siswa"
          ),
        ),
        const SizedBox(height: 16,),
        SizedBox(
          height: 1000,
          child: Obx((){
            final controller = Get.find<SearchSiswaController>().getFilteredStudents();
            return ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                final student = controller[index];
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(student.name),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 30,
                            width: 85,
                            child: ElevatedButton(
                            style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return const Color.fromARGB(255, 245, 245, 245);
                                } else {
                                  return const Color.fromARGB(255, 71, 71, 71);
                                }
                              }),
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states){
                                if (states.contains(MaterialState.pressed)) {
                                  return const Color.fromARGB(255, 58, 145, 170);
                                } else {
                                  return const Color.fromARGB(255, 234, 242,253);
                                }
                            })
                            ),
                            onPressed: () {
                              Get.find<SearchSiswaController>().setCondition(index);
                            }, child: const Text("Detail",)),
                          ),
                          const SizedBox(width: 5,),
                          SizedBox(
                            height: 30,
                            width: 80,
                            child: ElevatedButton(
                            onPressed: (){
                              Get.to(const CameraPageMobile());
                              //controllerCamera.getImage(ImageSource.camera);
                            }, child: const Text("Scan")),
                          ),
                        ],
                      )
                    ],
                  ),
                  // onTap: () {
                  //   final onTapController = Get.find<SearchSiswaController>();
                  //   onTapController.setSearchValue(student.name);
                  //   FocusScope.of(context).unfocus();
                  // },
                );
              }, 
              separatorBuilder: (context, index) {
                return const Divider();
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