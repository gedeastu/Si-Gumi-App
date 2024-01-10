import 'package:flutter/material.dart';
import 'package:si_gumi_app/layouts/root.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Root();
  }
}