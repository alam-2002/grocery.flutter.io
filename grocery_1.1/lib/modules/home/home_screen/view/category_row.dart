import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_new/common/text_widget.dart';

import '../../../../navigation/routes.dart';
import '../../../../utilities/constants/images_constants.dart';
import '../../category_items/view/diary_category.dart';
import '../../category_items/view/fruits_category.dart';
import '../../category_items/view/meat_category.dart';
import '../../category_items/view/vegetables_category.dart';


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
              Get.toNamed(Routes.fruitsCategoryScreen);
            },
            child: CategoryItem(
              icon: categoryFruits,
              label: 'Fruits',
            ),
          ),

          GestureDetector (
            onTap: () {
              Get.toNamed(Routes.vegetablesCategoryScreen);
            },
            child:  CategoryItem(
              icon: categoryVegetables,
              label: 'Vegetables',
            ),
          ),

          GestureDetector (
            onTap: () {
              Get.toNamed(Routes.diaryCategoryScreen);
            },
            child: CategoryItem(
              icon: categoryDairy,
              label: 'Dairy',
            ),
          ),

          GestureDetector (
            onTap: () {
              Get.toNamed(Routes.meatCategoryScreen);
            },
            child: CategoryItem(
              icon: categoryMeat,
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
          ),
        ),
        SizedBox(height: 8),
        Label(
          label: label,
            fontSize: 14,
            fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
