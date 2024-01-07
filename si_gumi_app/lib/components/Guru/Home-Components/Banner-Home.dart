import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> list = [1, 2, 3, 4, 5];
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30)
        ),
        height: 200,
        child: CarouselSlider(
        options: CarouselOptions(),
        items: list
            .map((item) => Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.amber
                  ),
                  child: Center(child: Text(item.toString())),
                ))
            .toList(),
      ));
  }
}