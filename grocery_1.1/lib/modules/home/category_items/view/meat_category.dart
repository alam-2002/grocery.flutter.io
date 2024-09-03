import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/custom_app_bar.dart';
import '../../../../common/gride_view_card.dart';
import '../../../../common/vegetable_constructor.dart';
import '../../../../utilities/constants/images_constants.dart';

class MeatCategory extends StatelessWidget {
  final List<Vegetable> vegetables = [
    Vegetable(
      name: "Beef",
      imageUrl: beefImg,
      description:
      "Beef is a type of red meat sourced from Cattle, prized for its robust flavor and nutritional value. It's enjoyed cooked in various ways, from steaks and roasts to ground beef for burgers and meatballs, offering a hearty addition to meals worldwide.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Fresh Chicken",
      imageUrl: chickenImg,
      description:
      "Chicken is a versatile poultry meat known for its mild flavor and lean, tender texture. It's popular in various cuisines worldwide, cooked in numerous ways such as grilled, fried, roasted, or used in soups and curries.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Farm Duck",
      imageUrl: duckImg,
      description:
      "Duck is a rich and flavorful poultry known for its darker meat and distinctive taste. It's often roasted to perfection, enjoyed in gourmet dishes for its tender texture and savory flavor profile.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Ocean Fish",
      imageUrl: fishImg,
      description:
      "Fish is a nutritious source of protein with a delicate flavor and varying textures, ranging from flaky to firm. It's widely enjoyed grilled, baked, fried, or raw in sushi, prized for its health benefits and culinary versatility.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Goat",
      imageUrl: goatImg,
      description:
      "Goat meat, known as chevon or mutton, offers a distinctive flavor that's slightly gamey yet tender when cooked properly. It's popular in many cuisines worldwide, from stews and curries to grilled dishes, valued for its lean protein content and versatility in cooking.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Lamb Meat",
      imageUrl: lambImg,
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
      name: "Pork",
      imageUrl: porkImg,
      description:
      "Pork is a versatile meat derived from pigs, known for its tender texture and varying cuts, from tenderloin to ribs and bacon. It's widely enjoyed in cuisines globally, cooked in various methods such as roasting, grilling, and braising, valued for its savory taste and culinary flexibility.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Ham",
      imageUrl: porkHamImg,
      description:
      "Ham is a cured pork product typically made from the leg or shoulder of a pig, known for its salty and savory flavor. It's enjoyed sliced thin or thick, hot or cold, often used in sandwiches, salads, and as a centerpiece for holiday meals.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Turkey",
      imageUrl: turkeyImg,
      description:
      "Turkey is a lean poultry known for its mild flavor and tender texture, often associated with festive meals like Thanksgiving and Christmas. It's versatile in cooking methods, from roasting whole to grilling or used in sandwiches and salads, appreciated for its protein content and versatility.",
      price: 15,
      rating: 4.8,
      reviews: 256,
      calories: 20,
      expiration: "1 month",
      organic: true,
    ),
    Vegetable(
      name: "Venison",
      imageUrl: venisonImg,
      description:
      "Venison refers to the meat of deer, prized for its lean texture, rich flavor, and low fat content. It's often enjoyed grilled, roasted, or in stews, valued for its gamey taste and nutritional benefits.",
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
        title: 'Meat 🥩',
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


