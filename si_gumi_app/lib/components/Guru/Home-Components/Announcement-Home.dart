import 'package:flutter/material.dart';
// import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:si_gumi_app/controllers/Home/announcement_controller.dart';

class AnnouncementHome extends StatelessWidget {
  const AnnouncementHome({super.key});
  //final controller = Get.put(AnnouncementController());
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        child: InkWell(
          highlightColor: const Color.fromARGB(255, 36, 59, 118).withOpacity(0.3),
          splashColor: const Color.fromARGB(255, 36, 59, 118).withOpacity(0.3),
          onTap: (){},
          child: Ink(
            height: 100,
            width: 380,
            padding: const EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black26,
                width: 1
              ),
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 234, 242, 253)
            ),
            child: Stack(
              children: [
                Positioned(
                    top: 5,
                    right: 95,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(80, 108, 72, 151),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 95,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(80, 255, 150, 175),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: 65,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(80, 58, 145, 170)
                      ),
                ),
                ),
                  Positioned(
                    bottom: 5,
                    right: 40,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(80, 255, 150, 175),
                      ),
                    ),
                  ),
                   Positioned(
                    top: 5,
                    right: 40,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(80, 108, 72, 151),
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    right: 5,
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(80, 58, 145, 170)
                      ),
                ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Game hari ini",style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      )),
                      Text("Bermain, belajar, dan selesaikan!",style: GoogleFonts.poppins(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 119, 119, 119)
                      ) ,)
                    ],),
                    Image.asset("assets/images/tempatSampah.png",width: 120,height: 120,),
                    
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ); 
  }
}