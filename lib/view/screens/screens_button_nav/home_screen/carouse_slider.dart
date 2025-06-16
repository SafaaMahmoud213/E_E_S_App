import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/constant/images.dart';

class CarouseSliderScreen extends StatefulWidget {
  const CarouseSliderScreen({super.key});

  @override
  State<CarouseSliderScreen> createState() => _CarouseSliderScreenState();
}

class _CarouseSliderScreenState extends State<CarouseSliderScreen> {
  List<Widget> items = [
    Image.asset(AppImages.frame),
    Image.asset(AppImages.frame),
    Image.asset(AppImages.frame),
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: items,
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 1.0,
        enlargeFactor: 0.3,
        pageSnapping: true,
        enlargeCenterPage: true,
        aspectRatio: 2.0,
        autoPlayInterval: Duration(seconds: 3),
        initialPage: 0,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.slowMiddle,
      ),
    );
  }
}
