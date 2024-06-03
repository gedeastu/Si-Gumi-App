// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:si_gumi_app/components/Guru/Home-Components/Announcement-Home.dart';
import 'package:si_gumi_app/components/Guru/Home-Components/AppBar-Home.dart';
import 'package:si_gumi_app/components/Guru/Home-Components/Carousel-Home.dart';
import 'package:si_gumi_app/components/Guru/Home-Components/KerajinanDariSampah.dart';
import 'package:si_gumi_app/components/Guru/Home-Components/PapanPeringkat-Home.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppBarHome(),
          ],
        )
      ),
      backgroundColor: Colors.white,
      body: 
         SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CarouselHome(),
                const SizedBox(height: 20,),
                const AnnouncementHome(),
                const SizedBox(height: 20,),
                const PapanPeringkatHome(),
                KerajinanDariSampahHome()
              ],
            ),
          ),
        )
    );
  }
}