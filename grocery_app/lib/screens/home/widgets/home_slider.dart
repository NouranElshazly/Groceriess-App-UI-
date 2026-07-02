import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int activeIndex = 0;
  List<String> imageList = [
    'assets/images/banner.avif',
    'assets/images/banner2.avif',
    'assets/images/banner3.avif',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 120.0,
            viewportFraction: 1.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
          ),

          items: imageList.map((imagePath) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset(imagePath).image,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 10,
          left: 155,
          right: 0,
          child: AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: imageList.length,
            effect: ExpandingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: Color(0xff53B175),
              dotColor: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
