import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/screens/categorys/fruits.dart';
import 'package:grocery_app/screens/categorys/vegetables.dart';
import 'package:grocery_app/screens/categorys/diary.dart';
import 'package:grocery_app/screens/categorys/meat.dart';

class CategoryRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector (
            onTap: () {
              Get.to(() => FruitsCategory());
            },
            child: CategoryItem(
              icon: 'images/fruits.png',
              label: 'Fruits',
            ),
          ),

          GestureDetector (
            onTap: () {
              Get.to(() => VegetablesCategory());
            },
            child:  CategoryItem(
              icon: 'images/vegetables.png',
              label: 'Vegetables',
            ),
          ),

          GestureDetector (
            onTap: () {
              Get.to(() => DairyListScreen());
            },
            child: CategoryItem(
              icon: 'images/diary.png',
              label: 'Dairy',
            ),
          ),

          GestureDetector (
            onTap: () {
              Get.to(() => MeatCategory());
            },
            child: CategoryItem(
              icon: 'images/meat.png',
              label: 'Meat',
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String icon;
  final String label;

  CategoryItem({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.shade300,
          child: Image.asset(
            icon,
            // width: 60,
            // height: 30,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
