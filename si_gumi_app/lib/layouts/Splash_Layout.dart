import 'package:flutter/material.dart';
import 'package:si_gumi_app/pages/Guru/Desktop/Home-Screen/Home_Page_Desktop.dart';
import 'package:si_gumi_app/pages/Guru/Mobile/Home-Screen/Home_Page_Mobile.dart';
import 'package:si_gumi_app/responsive/responsive_layout.dart';

class SplashScreenLayout extends StatelessWidget {
  const SplashScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(mobileBody: HomePageMobile(), desktopBody: HomePageDesktop());
  }
}