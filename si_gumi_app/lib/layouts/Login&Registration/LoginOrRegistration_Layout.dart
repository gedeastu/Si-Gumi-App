import 'package:flutter/material.dart';
import 'package:si_gumi_app/pages/Guru/Mobile/Login&Registration/LoginOrRegistration_Page_Mobile.dart';
import 'package:si_gumi_app/responsive/responsive_layout.dart';

class LoginOrRegistrationLayout extends StatelessWidget {
  const LoginOrRegistrationLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobileBody: LoginOrRegistrationPageMobile(), desktopBody: LoginOrRegistrationPageMobile());
  }
}