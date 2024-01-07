import 'package:flutter/material.dart';
import 'package:si_gumi_app/layouts/Guru/Home-Screen/Home_Layout.dart';

class Root extends StatelessWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        backgroundColor: Colors.white,
        body: HomeLayout(),
        // bottomNavigationBar: BottomNavigationBar(
        //   items: [],
        // ),
      ),
    );
  }
}