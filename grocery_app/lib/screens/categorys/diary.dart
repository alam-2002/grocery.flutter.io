import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/models/vegetable_constructor.dart';
import 'package:grocery_app/screens/item_details_screen.dart';

class DairyListScreen extends StatelessWidget {
  final List<Vegetable> vegetables = [
    Vegetable(
      name: "Butter",
      imageUrl: 'images/diary/butter.jpg',
      description:
          "Butter is a dairy product made from churning milk or cream to separate the butterfat from the buttermilk. It's commonly used for cooking, baking, and as a spread due to its rich flavor and creamy texture.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Amul Buttermilk",
      imageUrl: "images/diary/buttermilk.webp",
      description:
          "Buttermilk is the tangy, low-fat liquid left behind after churning butter from cream. It's often used in baking, cooking, and as a base for marinades due to its acidity and flavor-enhancing properties.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Amul Cheese",
      imageUrl: "images/diary/cheese.jpg",
      description:
          "Cheese is a versatile dairy product made from curdled milk, available in a wide variety of textures and flavors. It's enjoyed worldwide as a staple ingredient in many cuisines, adding richness and complexity to dishes.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Cottage Cheese",
      imageUrl: "images/diary/cottageCheese.jpg",
      description:
          "Cottage cheese is a fresh cheese curd product with a mild flavor and a creamy, lumpy texture. It's high in protein and often enjoyed on its own, with fruit, or as an ingredient in various recipes.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Amul Cream",
      imageUrl: "images/diary/cream.jpg",
      description:
          "Cream is the high-fat portion of milk that rises to the top and is skimmed off. It's used in cooking, baking, and as a luxurious addition to coffee and desserts for its rich, velvety texture.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Pure Curd",
      imageUrl: "images/diary/curd.jpg",
      description:
          "Curd, also known as yogurt in some regions, is a fermented dairy product made by adding bacterial cultures to milk. It's enjoyed for its tangy flavor and creamy texture, often used in cooking, baking, and as a probiotic-rich snack.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Amul Cow Milk",
      imageUrl: "images/diary/milk.jpg",
      description:
          "Cow milk is a nutrient-rich liquid produced by cows, widely consumed for its protein, calcium, and vitamins. It's a staple in many diets, used in beverages, cooking, and dairy products like cheese, butter, and yogurt.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Sour Cream",
      imageUrl: "images/diary/sourCream.jpg",
      description:
          "Sour cream is a tangy, thick dairy product made by fermenting cream with lactic acid bacteria. It's commonly used as a topping, in baking, and in savory dishes to add a rich, creamy texture and flavor.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Whey",
      imageUrl: "images/diary/whey.jpg",
      description:
          "Whey is the liquid byproduct of cheese making, rich in protein and nutrients. It is often used in dietary supplements, food products, and as an ingredient in baking and cooking.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Pure Yogurt",
      imageUrl: "images/diary/yogurt.jpg",
      description:
          "Yogurt is a creamy dairy product made by fermenting milk with bacterial cultures. It's known for its tangy flavor, smooth texture, and probiotic benefits, widely enjoyed as a snack, breakfast item, or ingredient in sauces and desserts.",
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
        title: Text('Diary 🧀'),
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

