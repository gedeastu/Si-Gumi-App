import 'package:flutter/material.dart';
import 'package:si_gumi_app/components/Guru/Home-Components/AppBar-Home.dart';
//import 'package:si_gumi_app/components/Guru/Home-Components/Banner-Home.dart';
import 'package:si_gumi_app/components/Guru/Home-Components/Carousel-Home.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBarHome(),
          ],
        )
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarouselHome()
              //BannerHome()
            ],
          ),
        )
      ),
    );
  }
}