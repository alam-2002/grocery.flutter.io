import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'cart_screen.dart';
import 'package:grocery_app/models/vegetable_constructor.dart';

class ItemDetails extends StatelessWidget {
  CartController cartController = Get.put(CartController());

  final Vegetable vegetable;

  ItemDetails({required this.vegetable});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
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
                Text(
                  vegetable.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(flex: 2),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 16,
                    // backgroundColor: Colors.white,
                    child:
                    Icon(Icons.remove, color: Colors.grey.shade500, size: 25),
                  ),
                ),
                SizedBox(width: 10.0,),
                Text(
                  '4',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10.0,),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.green,
                    child:
                    Icon(Icons.add, color: Colors.white, size: 25),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '1kg, ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Rs. ${vegetable.price}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              vegetable.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[600],
              ),
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
                Get.to(() => CartScreen());
              },
              child: Text('Add to cart'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green,
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, size: 40, color: Colors.green),
          SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

