import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/custom_app_bar.dart';
import '../../../../common/text_widget.dart';
import '../../../../common/vegetable_constructor.dart';
import '../../../../navigation/routes.dart';
import '../../../../theme/colors_class.dart';
import '../../cart/controller/cart_controller.dart';

class ItemDetailsScreen extends StatelessWidget {
  CartController cartController = Get.put(CartController());

  final Vegetable vegetable;

  ItemDetailsScreen({required this.vegetable});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Item Details',
        needIcon: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(vegetable.imageUrl,
                  height: 300, width: double.infinity, fit: BoxFit.cover),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Label(label:
                  vegetable.name,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                ),
                Spacer(flex: 2),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 16,
                    child:
                    Icon(
                        Icons.remove,
                        color: Colors.grey.shade500,
                        size: 25,
                    ),
                  ),
                ),
                SizedBox(width: 10.0,),
                Label(label:
                  '4',
                    fontWeight: FontWeight.bold,
                ),
                SizedBox(width: 10.0,),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: ColorsClass.basicGreen,
                    child:
                    Icon(
                        Icons.add,
                        color: ColorsClass.basicWhite,
                        size: 25,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Label(label: '1kg, '),
                SizedBox(height: 10,),
                Label(label:
                  'Rs. ${vegetable.price}',
                    color: ColorsClass.basicRed,
                    fontWeight: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(height: 8),
            Label(label:
              vegetable.description,
              textAlign: TextAlign.center,
                fontSize: 14,
                color: ColorsClass.greyShade600,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(icon: Icons.eco, label: '100% Organic'),
                InfoCard(icon: Icons.calendar_today, label: '1 month Expiration'),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(icon: Icons.star, label: '4.8 (256) Reviews'),
                InfoCard(icon: Icons.local_fire_department, label: '20 kcal 100 Gram'),
              ],
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                cartController.addToCart(vegetable);
                Get.toNamed(Routes.cartScreen);
              },
              child: Label(label:'Add to cart'),
              style: ElevatedButton.styleFrom(
                foregroundColor: ColorsClass.basicWhite,
                backgroundColor: ColorsClass.basicGreen,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;

  InfoCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: ColorsClass.basicWhite,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: ColorsClass.basicGrey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: ColorsClass.basicGreen),
          SizedBox(height: 8),
          Label(label:
            label,
            textAlign: TextAlign.center,
              fontSize: 14,
              fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}

