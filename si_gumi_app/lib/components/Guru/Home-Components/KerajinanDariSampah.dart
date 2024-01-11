import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:si_gumi_app/controllers/Home/kerajinan_dari_sampah_controller.dart';

class KerajinanDariSampahHome extends StatelessWidget {
  KerajinanDariSampahHome({super.key});
  final controller = Get.put(KerajinanController());
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Kerajinan dari sampah",style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 20
          ),),
          Container(
            height: 150,
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Material(
                    child: InkWell(
                      highlightColor: controller.kerajinanDariSampah[index].color_argb,
                      splashColor: controller.kerajinanDariSampah[index].color_argb,
                      onTap: (){

                      },
                      child: Ink(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color.fromARGB(255, 36, 59, 118)),
                          image: DecorationImage(image: AssetImage(controller.kerajinanDariSampah[index].bg_card),fit: BoxFit.cover)
                        ),
                        width: 117,
                        height: 110,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(controller.kerajinanDariSampah[index].img,width: 80,height: 80,),
                            const SizedBox(height: 3,),
                            SizedBox(width: 57,child: Text(controller.kerajinanDariSampah[index].name,textAlign: TextAlign.center,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),))
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }, 
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 10,);
              }, 
              itemCount: controller.kerajinanDariSampah.length
            ),
            // child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     ClipRRect(
            //       borderRadius: BorderRadius.circular(20),
            //       child: Material(
            //         child: InkWell(
            //           highlightColor: Color.fromARGB(255, 34, 87, 218).withOpacity(0.3),
            //           splashColor: Color.fromARGB(255,34,87,218).withOpacity(0.3),
            //           onTap: (){},
            //           child: Ink(
            //             decoration: BoxDecoration(
            //               image: DecorationImage(image: AssetImage("assets/images/bg_card_kerajinan.png"),fit: BoxFit.cover)
            //             ),
            //             width: 110,
            //             height: 150,
            //             child: Column(
            //               crossAxisAlignment: CrossAxisAlignment.center,
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               children: [
            //                 Image.asset("assets/images/sampahPlastik.png",width: 60,),
            //                 SizedBox(width: 57,child: Text("Sampah Plastik",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),))
            //               ],
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ),
        ],
      ),
    );
  }
}