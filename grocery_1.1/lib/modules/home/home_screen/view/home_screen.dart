import 'package:flutter/material.dart';
import 'package:grocery_new/modules/home/home_screen/view/search_bar.dart';
import 'package:grocery_new/modules/home/home_screen/view/header_section.dart';
import 'package:grocery_new/modules/home/home_screen/view/category_row.dart';
import 'package:grocery_new/modules/home/home_screen/view/best_selling.dart';
import '../../../../common/carousel_slider.dart';
import '../../../../common/navigation_bar.dart';


class HomeScreen extends StatelessWidget {
    const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(),
              SizedBox(height: 16),

              CustomSearchBar(),
              SizedBox(height: 16),

              CustomCarouselSlider(),
              SizedBox(height: 16),

              CategoryRow(),
              SizedBox(height: 16),

              BestSellingSection(),

              // BestSellingSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
