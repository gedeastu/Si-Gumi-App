import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:si_gumi_app/layouts/Root.dart';

class LoginOrRegistrationPageMobile extends StatelessWidget {
  LoginOrRegistrationPageMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                "assets/images/bg_splash_screen.jpg"
              )),
            ),
            // child: ElevatedButton(
            //   onPressed: (){
            //     Get.to(Root());
            //   },
            //   child: Text("Go to Home"),
            // ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 30),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/images/logo.png",width: 300,height: 300,),
                SizedBox(height: 15,),
                Container(
                  width: 350,
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Daftar atau Masuk",style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),),
                      Container(
                        width: 330,
                        child: Text("Langkah pertama menuju lingkungan bersih dan edukatif! Masuk atau daftar akun sekarang bersama Si Gumi.",textAlign: TextAlign.center,style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 133, 132, 148),
                          fontSize: 14
                        ),)
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 58, 145, 170),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        onPressed: (){
                        
                        }, child: Text("Masuk",style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontWeight: FontWeight.w500
                        ),)),
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 230, 230, 230),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        onPressed: (){
                        
                        }, child: Text("Buat Akun Baru",style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 58, 145, 170),
                          fontWeight: FontWeight.w500
                        ),)),
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          surfaceTintColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        onPressed: (){
                        
                        }, child: Text("Nanti",style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 133, 132, 148),
                          fontWeight: FontWeight.w500
                        ),)),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}