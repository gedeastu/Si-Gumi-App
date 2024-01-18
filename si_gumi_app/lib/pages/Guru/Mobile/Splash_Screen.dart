// ignore: file_names
import 'package:flutter/material.dart';
import 'package:si_gumi_app/layouts/Login&Registration/LoginOrRegistration_Layout.dart';

class SplashScreenPageMobile extends StatefulWidget {
  const SplashScreenPageMobile({super.key});

  @override
  State<SplashScreenPageMobile> createState() => _SplashScreenPageMobileState();
}

class _SplashScreenPageMobileState extends State<SplashScreenPageMobile> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome()async{
    await Future.delayed(Duration(milliseconds: 1500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginOrRegistrationLayout(),));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/bg_splash_screen.jpg"))
            ),),
          Center(
              child: Image.asset("assets/images/logo.png",width: 200,height: 2000,)
          )
        ],
      ),
    );
  }
}