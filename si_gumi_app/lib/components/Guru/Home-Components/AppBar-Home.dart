import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome ({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.transparent,
      leading: Container(
        padding: EdgeInsets.only(left: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 59, 50, 121),width: 3),
                  borderRadius: BorderRadius.circular(100)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset("assets/images/profile-guru.jpg",fit: BoxFit.cover, width: 56,height: 56,),
                ),
              ),
            ),
            SizedBox(width: 10,),
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Good Morning!",style:GoogleFonts.poppins(
                fontSize: 13,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 2,),
              Text("Dwi Widiyanti",style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.w600
              ),)
            ],
          ),
          ],
        ),
      ),
      leadingWidth: double.maxFinite,
    );
  }
}