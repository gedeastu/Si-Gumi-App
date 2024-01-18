import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:si_gumi_app/layouts/Auth.dart';

Future main() async {
  await Future.delayed(Duration(seconds: 5));
  FlutterNativeSplash.remove();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Auth();
  }
}