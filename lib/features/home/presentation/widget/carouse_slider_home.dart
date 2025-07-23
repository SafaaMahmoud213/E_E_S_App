import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouseSliderScreen extends StatefulWidget {
  CarouseSliderScreen({super.key, required this.items});
  List<Widget> items;

  @override
  State<CarouseSliderScreen> createState() => _CarouseSliderScreenState();
}

class _CarouseSliderScreenState extends State<CarouseSliderScreen> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: widget.items,
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
