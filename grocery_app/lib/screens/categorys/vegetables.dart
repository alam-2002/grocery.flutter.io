import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/models/vegetable_constructor.dart';
import 'package:grocery_app/screens/item_details_screen.dart';

class VegetablesCategory extends StatelessWidget {
  final List<Vegetable> vegetables = [
    Vegetable(
      name: "Bitter Gourd",
      imageUrl: 'images/vegetables/bitterGourd.jpg',
      description:
      "Bitter gourd, also known as bitter melon, is a green, warty-skinned vegetable with a distinct bitter taste. It's valued in many cuisines for its potential health benefits and used in dishes ranging from stir-fries to soups, appreciated for its unique flavor profile.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Broccoli",
      imageUrl: 'images/vegetables/broccoli.jpg',
      description:
      "Broccoli is a nutritious green vegetable with tightly packed florets and a crunchy stalk. It's prized for its versatility in cooking, offering a mild, earthy flavor that complements various dishes from salads to stir-fries.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Cabbage",
      imageUrl: 'images/vegetables/cabbage.jpg',
      description:
      "Cabbage is a leafy vegetable with layers of tightly packed leaves and a crisp texture. It's used in culinary dishes worldwide, known for its mild, slightly sweet flavor and versatility in soups, salads, slaws, and stir-fries.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Capsicum",
      imageUrl: 'images/vegetables/capsicum.jpg',
      description:
      "Capsicum, also known as bell pepper or sweet pepper, is a vibrant and crunchy vegetable with a sweet flavor. It comes in various colors like red, yellow, and green, used raw in salads, grilled, roasted, or sautéed in numerous culinary preparations.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Carrots",
      imageUrl: 'images/vegetables/carrots.jpg',
      description:
      "Carrots are crisp and sweet root vegetables known for their bright orange color and high beta-carotene content. They're versatile in cooking, enjoyed raw as snacks, in salads, soups, stews, and as a side dish, prized for their flavor and nutritional benefits.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Cucumber",
      imageUrl: 'images/vegetables/cucumber.jpg',
      description:
      "Cucumbers are refreshing, crunchy vegetables with a mild, watery taste and a thin, edible skin. They're widely enjoyed fresh in salads, sandwiches, and as a hydrating snack, valued for their cooling properties and versatility in culinary applications.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Garlic",
      imageUrl: 'images/vegetables/garlic.jpg',
      description:
      "Garlic is a pungent bulb with cloves encased in a papery skin, known for its strong, savory flavor and aromatic qualities. It's a staple ingredient in various cuisines worldwide, used fresh or as a seasoning in dishes ranging from sauces and marinades to soups and stir-fries.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Ginger",
      imageUrl: 'images/vegetables/ginger.jpg',
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
      name: "Red Bell Pepper",
      imageUrl: 'images/vegetables/redBellPepper.jpg',
      description:
      "Red bell peppers are sweet and crunchy vegetables with a vibrant red color and a mildly fruity flavor. They're versatile in cooking, enjoyed raw in salads, roasted, grilled, or sautéed in dishes like stir-fries and stuffed peppers, prized for their nutrition and color.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Onions",
      imageUrl: 'images/vegetables/onions.webp',
      description:
      "Onions are pungent bulbs with layers of papery skin, prized for their savory flavor and aroma when cooked. They're a staple in cuisines worldwide, used raw in salads, caramelized in soups and stews, or as a foundational ingredient in countless dishes.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Potato",
      imageUrl: 'images/vegetables/potato.jpg',
      description:
      "Potatoes are starchy tuber vegetables with a neutral flavor and a versatile culinary presence. They're enjoyed boiled, baked, mashed, fried, or roasted, offering comfort and nutrition in dishes ranging from fries and chips to soups and casseroles.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Tomato",
      imageUrl: 'images/vegetables/tomato.jpg',
      description:
      "Tomatoes are juicy fruits with a tangy-sweet flavor and a smooth, shiny skin. They're used in salads, sauces, soups, and countless dishes worldwide, prized for their versatility and rich content of vitamins and antioxidants.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vegetables 🥦'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: GridView.builder(
            // physics: AlwaysScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
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
                            height: 120,
                            width: 150,
                            // width: 100,
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
                        SizedBox(width: 10),
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
                                child: Icon(Icons.add,
                                    color: Colors.white, size: 16),
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
        ),
      ),
    );
  }
}


