import 'package:flutter/material.dart';
import 'package:si_gumi_app/pages/Guru/Mobile/Splash_Screen.dart';
import 'package:si_gumi_app/responsive/responsive_layout.dart';

class SplashScreenLayout extends StatelessWidget {
  const SplashScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(mobileBody: SplashScreenPageMobile(), desktopBody: SplashScreenPageMobile());
  }
}