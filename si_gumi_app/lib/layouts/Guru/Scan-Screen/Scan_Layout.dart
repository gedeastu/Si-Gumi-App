import 'package:flutter/material.dart';
import 'package:si_gumi_app/pages/Guru/Mobile/Scan-Screen/Scan_Page_Mobile.dart';
import 'package:si_gumi_app/responsive/responsive_layout.dart';

class ScanLayout extends StatelessWidget {
  const ScanLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(mobileBody: ScanPageMobile(), desktopBody: ScanPageMobile());
  }
}