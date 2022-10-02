import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class AdvertisementSlider extends StatelessWidget {
  const AdvertisementSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          viewportFraction: 0.95,
          enableInfiniteScroll: false,
        ),
        items: [1,2,3,4,5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                clipBehavior: Clip.antiAlias,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(right: 15),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("assets/images/1013887912233943130.gif", fit: BoxFit.fitHeight,)
              );
            },
          );
        }).toList(),
      ),
    );
  }
}