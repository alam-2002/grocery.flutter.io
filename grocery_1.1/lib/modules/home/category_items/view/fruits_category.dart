import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/custom_app_bar.dart';
import '../../../../common/gride_view_card.dart';
import '../../../../common/vegetable_constructor.dart';
import '../../../../utilities/constants/images_constants.dart';

class FruitsCategory extends StatelessWidget {
  final List<Vegetable> vegetables = [
    Vegetable(
      name: "Kashmiri Apples",
      imageUrl: applesImg,
      description:
      "Apples are crisp and juicy fruits with a sweet-tart flavor, enjoyed in a variety of culinary applications from snacking to baking. They come in numerous varieties, each offering unique textures and tastes, making them versatile in both sweet and savory dishes.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Bananas",
      imageUrl: bananaImg,
      description:
      "Bananas are tropical fruits with a creamy texture and sweet flavor, packed with nutrients like potassium and vitamins. They're versatile for snacking, smoothies, baking, and as a natural sweetener in desserts and breakfast dishes.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Chikoo",
      imageUrl: chikooImg,
      description:
      "Chikoo, also known as sapodilla, is a tropical fruit with a sweet, grainy texture and brown skin. It's prized for its caramel-like flavor, enjoyed fresh, in desserts, or as a milkshake ingredient.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Fig",
      imageUrl: figImg,
      description:
      "Figs are sweet and chewy fruits with a unique, honey-like flavor and small seeds. They are versatile in both fresh and dried forms, enjoyed as a snack, in salads, or paired with cheese for a gourmet treat.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Grapes",
      imageUrl: grapesImg,
      description:
      "Grapes are juicy, bite-sized fruits that grow in clusters on vines and come in various colors like green, red, and purple. They're enjoyed fresh, dried as raisins, or pressed into juice and wine, offering a burst of sweetness and nutrients like vitamins and antioxidants.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Mangoes",
      imageUrl: mangoImg,
      description:
      "Mangoes are tropical fruits known for their sweet, juicy flesh and distinctive aroma. They come in various shapes, sizes, and flavors, prized for their versatility in desserts, smoothies, salads, and savory dishes worldwide.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Oranges",
      imageUrl: orangesImg,
      description:
      "Oranges are citrus fruits with a bright, tangy flavor and juicy flesh enclosed in a thick, easy-to-peel rind. They're packed with vitamin C and enjoyed fresh, juiced, or as a flavor enhancer in both sweet and savory dishes.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Pineapple",
      imageUrl: pineappleImg,
      description:
      "Pineapples are tropical fruits known for their sweet and tangy flavor with a prickly, spiky skin and juicy yellow flesh. They're versatile in cocktails, desserts, savory dishes, and eaten fresh, providing a tropical taste and a dose of vitamins and enzymes.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Strawberries",
      imageUrl: strawberryImg,
      description:
      "Strawberries are bright red, juicy fruits with a sweet and slightly tart flavor, often adorned with small seeds on their exterior. They're popular fresh, in desserts, salads, jams, and as a topping for various dishes, prized for their vibrant color and refreshing taste.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Watermelon",
      imageUrl: watermelonImg,
      description:
      "Watermelon is a large, refreshing fruit with juicy, sweet flesh and a hard green rind often striped with lighter shades. It's enjoyed fresh in slices, salads, smoothies, and as a hydrating summer treat, known for its high water content and cooling properties.",
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
        title: 'Fruits 🍎',
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

