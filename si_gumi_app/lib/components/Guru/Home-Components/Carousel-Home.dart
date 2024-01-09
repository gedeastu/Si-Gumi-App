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
              autoPlay: true,
              viewportFraction: 1.0,
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
        SizedBox(height: 3,),
        indicator_smooth()
      ],
    );
  }
  // Widget promoSlider() {
  //     List<String> imageUrls = [
  //       'assets/images/banner_1.png',
  //       'assets/images/banner_2.png',
  //       // 'assets/images/banner_promo.png',
  //     ];
  //     return Container(
  //       margin: EdgeInsets.only(
  //         top: 18,
  //         left: newDefaultMargin,
  //         right: newDefaultMargin,
  //       ),
  //       child: Column(
  //         children: [
  //           CarouselSlider(
  //             options: CarouselOptions(
  //               viewportFraction: 1.0,
  //               height: 178,
  //               autoPlay: true,
  //               aspectRatio: 16 / 9,
  //               autoPlayInterval: const Duration(seconds: 5),
  //               autoPlayCurve: Curves.fastOutSlowIn,
  //               onPageChanged: (index, reason) {
  //                 handlePageChange(index);
  //               },
  //             ),
  //             items: imageUrls.map((imageUrl) {
  //               return Builder(builder: (context) {
  //                 return Container(
  //                   decoration: BoxDecoration(
  //                       borderRadius: BorderRadius.circular(12),
  //                       color: Colors.amber),
  //                   child: ClipRRect(
  //                     borderRadius: BorderRadius.circular(12),
  //                     child: Image.asset(
  //                       imageUrl,
  //                       fit: BoxFit.cover,
  //                     ),
  //                   ),
  //                 );
  //               });
  //             }).toList(),
  //           ),
  //           const SizedBox(
  //             height: 12,
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: imageUrls.map((url) {
  //               int index = imageUrls.indexOf(url);
  //               return Container(
  //                 width: 8,
  //                 height: 8,
  //                 margin: const EdgeInsets.symmetric(
  //                     vertical: 10.0, horizontal: 2.0),
  //                 decoration: BoxDecoration(
  //                   shape: BoxShape.circle,
  //                   color: _current == index ? Colors.amber : Colors.grey,
  //                 ),
  //               );
  //             }).toList(),
  //           ),
  //         ],
  //       ),
  //     );
  //   }

  Widget images(String assetsImages,int index){
  return Container(
    width: 380,
    margin: EdgeInsets.all(10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey.withOpacity(0.3),
      //     spreadRadius: 3,
      //     blurRadius: 5,
      //     offset: Offset(0, 1), // changes position of shadow
      //   ),
      // ],
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(assetsImages,fit: BoxFit.cover,width: double.infinity,)
    ),
  );
  }

  Widget indicator_smooth()=>AnimatedSmoothIndicator(
    onDotClicked: (index) {
      setState(() {
        activeIndex = index;
      });
    },
    effect: ExpandingDotsEffect(dotWidth: 8,dotHeight: 8,activeDotColor: Color.fromARGB(255, 59, 50, 121)),
    activeIndex: activeIndex, 
    count: AssetsImages.length,
  );
}
