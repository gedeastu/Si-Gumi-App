import 'package:flutter/material.dart';
import 'package:si_gumi_app/pages/Guru/Mobile/Penghargaan-Screen/Penghargaan_Page_Mobile.dart';
import 'package:si_gumi_app/responsive/responsive_layout.dart';

class PenghargaanLayout extends StatelessWidget {
  const PenghargaanLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileBody: PenghargaanPageMobile(), desktopBody: PenghargaanPageMobile());
  }
}