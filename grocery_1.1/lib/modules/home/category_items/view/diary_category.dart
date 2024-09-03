import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/custom_app_bar.dart';
import '../../../../common/gride_view_card.dart';
import '../../../../common/vegetable_constructor.dart';
import '../../../../utilities/constants/images_constants.dart';

class DairyCategory extends StatelessWidget {
  final List<Vegetable> vegetables = [
    Vegetable(
      name: "Butter",
      imageUrl: butterImg,
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
      imageUrl: buttermilkImg,
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
      imageUrl: cheeseImg,
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
      imageUrl: cottageCheeseImg,
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
      imageUrl: creamImg,
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
      imageUrl: curdImg,
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
      imageUrl: milkImg,
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
      imageUrl: sourCreamImg,
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
      imageUrl: wheyImg,
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
      imageUrl: yogurtImg,
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
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Diary 🧀',
        needIcon: true,
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
              return GrideViewCard(
                onTap: () {
                  // Get.to(() => ItemDetails(vegetable: vegetable));
                },
                imageUrl: vegetable.imageUrl,
                name: vegetable.name,
                weight: vegetable.weight,
                price: 'Rs.${vegetable.price}',
              );
            },
          ),
        ),
      ),
    );
  }
}

