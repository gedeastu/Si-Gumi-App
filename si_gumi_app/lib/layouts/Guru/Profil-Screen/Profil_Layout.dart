import 'package:flutter/material.dart';
import 'package:si_gumi_app/pages/Guru/Mobile/Profile-Screen/Profil_Page_Mobile.dart';
import 'package:si_gumi_app/responsive/responsive_layout.dart';

class ProfilLayout extends StatelessWidget {
  const ProfilLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(mobileBody: ProfilPageMobile(), desktopBody: ProfilPageMobile());
  }
}