import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:khodari_test/utils/constants.dart';

class Panel extends StatefulWidget {
  const Panel({super.key});

  @override
  State<Panel> createState() => _PanelState();
}

class _PanelState extends State<Panel> {
  final CarouselController _carouselController = CarouselController();
  @override
  @override
  Widget build(BuildContext context) {
    final List<Widget> carouselItems = [
      GridTile(
          child: SizedBox(
              width: w,
              height: h! * 0.95,
              child: Image.asset("assets/banners01.png", fit: BoxFit.contain))),
      GridTile(
          child: SizedBox(
              width: w,
              height: h! * 0.95,
              child: Image.asset("assets/Banners02.png", fit: BoxFit.contain))),
      GridTile(
          child: SizedBox(
              width: w,
              height: h! * 0.95,
              child: Image.asset("assets/Banners03.png", fit: BoxFit.contain))),
      GridTile(
          child: SizedBox(
              width: w,
              height: h! * 0.95,
              child: Image.asset(
                "assets/Banners04.png",
                fit: BoxFit.contain,
              ))),
    ];
    return Stack(
      children: [
        CarouselSlider(
            items: carouselItems,
            carouselController: _carouselController,
            options: CarouselOptions(
                viewportFraction: 1,
                padEnds: true,
                scrollPhysics: const BouncingScrollPhysics(),
                height: h! - h! / 4,
                autoPlay: false,
                enlargeCenterPage: true,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {})),
        Positioned(
          
            width: w,
            bottom: h! / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  
                    onPressed: () {
                      _carouselController.previousPage();
                    },
                    child: Icon(Icons.arrow_left)),
                ElevatedButton(
                    onPressed: () {
                      _carouselController.nextPage();
                    },
                    child: Icon(Icons.arrow_right))
              ],
            ))
      ],
    );
  }
}
