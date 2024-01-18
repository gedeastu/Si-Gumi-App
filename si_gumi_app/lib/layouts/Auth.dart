import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:si_gumi_app/layouts/Login&Registration/LoginOrRegistration_Layout.dart';
// import 'package:si_gumi_app/pages/Guru/Mobile/Login&Registration/LoginOrRegistration_Page_Mobile.dart';

class Auth extends StatelessWidget {
  Auth({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:AnimatedSplashScreen(
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 200,
          backgroundColor: Color.fromARGB(255, 58, 145, 170),
          splash: Center(
            child: Image.asset("assets/images/logo.png",width: 500,height: 500,)
          ),
          nextScreen: LoginOrRegistrationLayout(),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [],
        // ),
    );
  }
}