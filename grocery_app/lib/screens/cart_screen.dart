import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_app/models/vegetable_constructor.dart';

class CartScreen extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart 🛒'),
        centerTitle: true,
      ),
      body: Obx(() {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartController.cartItems[index];
                  return ListTile(
                    leading: Image.asset(item.imageUrl,
                        height: 50, width: 50, fit: BoxFit.cover),
                    title: Text(
                      item.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          '1kg, ',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Rs. ${item.price}',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove,
                              color: Colors.grey.shade500, size: 25),
                          onPressed: () {
                            // cartController.cartItems.removeAt(index);
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color>(Color(0xffF3F5F9),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Text(
                          '1',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        IconButton(
                          icon: Icon(Icons.add, color: Colors.white, size: 25),
                          onPressed: () {
                            // Add quantity logic here
                          },
                          style: ButtonStyle(
                            backgroundColor:
                                WidgetStatePropertyAll<Color>(Colors.green),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () {
                // Add functionality for offers
              },
              child: Text('Grab Your Offers'),
              style: ElevatedButton.styleFrom(
                elevation: 3.0,
                minimumSize: Size(double.infinity, 50),
                textStyle: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            Spacer(),
            Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Rs. 216',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 5.0, horizontal: 2.0),
              child: ElevatedButton(
                onPressed: () {
                  // Add functionality to checkout
                },
                child: Text(
                  'Checkout',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 1.0,
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.green,
                  // textStyle: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}

class CartController extends GetxController {
  var cartItems = <Vegetable>[].obs;

  void addToCart(Vegetable vegetable) {
    cartItems.add(vegetable);
  }
}
