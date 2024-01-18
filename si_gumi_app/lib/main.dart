import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:si_gumi_app/layouts/root.dart';

Future main() async {
  await Future.delayed(Duration(seconds: 10));
  FlutterNativeSplash.remove();
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Root();
  }
}