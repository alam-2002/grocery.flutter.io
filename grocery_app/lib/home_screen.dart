import 'package:flutter/material.dart';
import 'models/best_selling.dart';
import 'models/carousel_slider.dart';
import 'models/category_items.dart';
import 'models/navigation_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              SizedBox(height: 16),

              _buildSearchBar(),
              SizedBox(height: 16),

              BannerCarousel(),
              SizedBox(height: 16),

              CategoryRow(),
              SizedBox(height: 16),

              BestSellingSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyNavigationBar(),
    );
  }

  Widget _buildHeader() {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          child: Image.asset('images/avatar.jpg'),
          radius: 20.0,
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good morning!',
              style: TextStyle(fontSize: 18),
            ),
            Text(
              'Alamgir Mulla',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search category',
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xff23AA49),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey.shade200,
      ),
    );
  }
}