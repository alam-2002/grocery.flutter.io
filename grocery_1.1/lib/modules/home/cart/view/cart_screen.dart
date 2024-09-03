import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_new/navigation/routes.dart';
import 'package:grocery_new/theme/colors_class.dart';
import '../../../../common/custom_app_bar.dart';
import '../../../../common/text_widget.dart';
import '../controller/cart_controller.dart';

class CartScreen extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: 'Cart 🛒',
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
                    title: Label(
                      label: item.name,
                      fontWeight: FontWeight.w800,
                    ),
                    subtitle: Row(
                      children: [
                        Label(
                          label: '1kg, ',
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Label(
                          label: 'Rs. ${item.price}',
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
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
                            backgroundColor: WidgetStatePropertyAll<Color>(
                              ColorsClass.catskillWhite,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Label(
                          label: '1',
                          fontWeight: FontWeight.w500,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
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
              child: Label(label: 'Grab Your Offers'),
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
                  Label(
                    label: 'Total',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  Label(
                    label: 'Rs. 216',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
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
                  Get.toNamed(Routes.trackOrderScreen);
                },
                child: Label(
                  label: 'Checkout',
                  color: ColorsClass.basicWhite,
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 1.0,
                  minimumSize: Size(double.infinity, 50),
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
