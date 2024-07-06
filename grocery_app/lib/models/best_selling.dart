import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/models/vegetable_constructor.dart';
import 'package:grocery_app/screens/item_details_screen.dart';

class BestSellingSection extends StatelessWidget {
  final List<Vegetable> vegetables = [
    Vegetable(
      name: "Organic Ginger",
      imageUrl: "images/bigGinger.png",
      description:
          "Ginger is a flowering plant whose rhizome, ginger root or ginger, is widely used as a spice and a folk medicine.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Lamb Meat",
      imageUrl: "images/lambMeat.png",
      description:
        "Lamb meat, prized for its tender texture and mild flavor, comes from young sheep typically under one year old. It's versatile in cooking, enjoyed roasted, grilled, or in stews and curries, offering a rich source of protein and essential nutrients.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Butternut",
      imageUrl: "images/butternut.png",
      description:
        "Butternut squash is a winter squash with a sweet, nutty flavor and dense, orange flesh. It's often roasted, pureed into soups, or used in risottos and salads, prized for its rich taste and nutritional benefits.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Bell Pepper Red",
      imageUrl: "images/bellPepperRed.png",
      description:
        "Red bell peppers are sweet and crunchy vegetables with a vibrant red color and a mildly fruity flavor. They're versatile in cooking, enjoyed raw in salads, roasted, grilled, or sautéed in dishes like stir-fries and stuffed peppers, prized for their nutrition and color.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'Best Selling 🔥',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 5),
                    // Icon(Icons.whatshot, color: Colors.red, size: 20),
                  ],
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              shrinkWrap: true,
              itemCount: vegetables.length,
              itemBuilder: (context, index) {
                final vegetable = vegetables[index];
                return GestureDetector(
                  onTap: () {
                    Get.to(() => ItemDetails(vegetable: vegetable));
                  },
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
                              vegetable.imageUrl,
                              height: 100,
                              width: 150,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            vegetable.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            vegetable.weight,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width:10),
                          Row(
                            children: [
                              Text(
                                'Rs.${vegetable.price}',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  radius: 16,
                                  backgroundColor: Colors.green,
                                  child:
                                  Icon(Icons.add, color: Colors.white, size: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
