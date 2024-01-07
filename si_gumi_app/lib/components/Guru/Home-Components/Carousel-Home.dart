import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
class CarouselHome extends StatefulWidget {
  const CarouselHome({super.key});

  @override
  State<CarouselHome> createState() => _CarouselHomeState();
}

class _CarouselHomeState extends State<CarouselHome> {
  int activeIndex = 0;
  final AssetsImages = [
    "assets/images/Image-carousel.jpg",
    "assets/images/Image-carousel.jpg",
    "assets/images/Image-carousel.jpg",
    "assets/images/Image-carousel.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30)
          ),
          child: CarouselSlider.builder(
            itemCount: AssetsImages.length, 
            itemBuilder: (context, index, realIndex) {
              final assetImage = AssetsImages[index];
              return images(assetImage,index);
            }, 
            options: CarouselOptions(
              height: 200,
              aspectRatio: 100.0,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            )
          ),
        ),
        SizedBox(height: 12,),
        indicator_smooth()
      ],
    );
  }
  Widget images(String assetsImages,int index){
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 45),
    child: Image.asset(assetsImages,fit: BoxFit.cover,),
  );
  }

  Widget indicator_smooth()=>AnimatedSmoothIndicator(
    effect: ExpandingDotsEffect(dotWidth: 10,dotHeight: 10,activeDotColor: Color.fromARGB(255, 59, 50, 121)),
    activeIndex: activeIndex, 
    count: AssetsImages.length,
  );
}
