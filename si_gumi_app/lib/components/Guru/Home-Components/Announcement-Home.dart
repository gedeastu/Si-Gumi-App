import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnnouncementHome extends StatelessWidget {
  const AnnouncementHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 380,
      padding: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 234, 242, 253)
      ),
      child: Row(
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
              color: Color.fromARGB(255, 119, 119, 119)
            ) ,)
          ],),
          Image.asset("assets/images/tempatSampah.png",width: 120,height: 120,)
        ],
      ),
    );
  }
}