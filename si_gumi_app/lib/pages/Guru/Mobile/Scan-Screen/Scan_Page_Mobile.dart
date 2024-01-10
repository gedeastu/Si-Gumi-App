import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScanPageMobile extends StatelessWidget {
  const ScanPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1.5,color: Colors.black12))
          ),
          child: AppBar(
            centerTitle: true,
            title: Text("Scanner",style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16
            ),),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20,),
              Container(
                width: 350,
                child: Text("Pilih data siswa dan kumpulkan sampah sebanyak-banyaknya",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 14
                ),)
              ),
              
            ],
          ),
        )
      ),
    );
  }
}