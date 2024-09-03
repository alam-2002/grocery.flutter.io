import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../utilities/constants/images_constants.dart';

class CustomCarouselSlider extends StatelessWidget {
    CustomCarouselSlider({super.key});

  final List<String> productImages = [
    carouselImage,
    carouselImage,
    carouselImage,
    carouselImage
  ];


  @override
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 21 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
        items: productImages.map((String imageUrl) {
          return Builder(
            builder: (BuildContext context) {
              return InkWell(
                onTap: (){
                  // Get.to(()=>OfferScreen());
                  //redirect to offer screen
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}