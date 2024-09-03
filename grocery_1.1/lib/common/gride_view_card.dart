import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_new/common/text_widget.dart';

import '../theme/colors_class.dart';

class GrideViewCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String weight;
  final String price;
  VoidCallback onTap;

  GrideViewCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.weight,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      // onTap: () {
      //   // Get.to(() => ItemDetails(vegetable: vegetable));
      // },
      child: Card(
        color: Colors.grey.shade200,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  // vegetable.imageUrl,
                  imageUrl,
                  height: 100,
                  width: 150,
                ),
              ),
              SizedBox(height: 5),
              Label(
                label:
                // vegetable.name,
                name,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              Label(
                label:
                // vegetable.weight,
                weight,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              // SizedBox(width: 10),
              Row(
                children: [
                  Label(
                    label:
                    //'Rs.${vegetable.price}',
                    price,
                    fontSize: 16,
                    color: ColorsClass.basicRed,
                    fontWeight: FontWeight.bold,
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: ColorsClass.basicGreen,
                      child: Icon(Icons.add, color: ColorsClass.basicWhite, size: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}