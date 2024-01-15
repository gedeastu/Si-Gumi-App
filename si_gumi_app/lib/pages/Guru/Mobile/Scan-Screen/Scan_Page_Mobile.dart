import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:si_gumi_app/components/Guru/Scan-Components/SearchSiswa-Scan.dart';
// import 'package:si_gumi_app/components/Guru/InputField.dart';

class ScanPageMobile extends StatelessWidget {
  
  const ScanPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
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
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 40),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SearchSiswa(),
                // InputField(obscureText: false, borderSide: Color.fromARGB(255, 190, 242, 235), focusedBorder: Colors.blue,color: Color.fromARGB(255, 255, 255, 255), width: 200, height: 30, icon: Icon(Icons.search), rounded: 80, hintText: "Cari nama siswa", inputType: TextInputType.text, controller:TextEditingController() , borderRadius: BorderRadius.circular(80), colorTextField: Color.fromARGB(255, 119, 119, 119), colorHintTextStyle: Color.fromARGB(255, 119, 119, 119)),
                const SizedBox(height: 90,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/placholderImageSearch.png"),
                    SizedBox(
                      width: 350,
                      child: Text("Pilih data siswa dan kumpulkan sampah sebanyak-banyaknya",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontSize: 14
                      ),)
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        )
      ),
    );
  }
}