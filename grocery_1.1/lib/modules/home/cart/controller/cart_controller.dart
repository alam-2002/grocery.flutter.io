import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_new/common/vegetable_constructor.dart';

class CartController extends GetxController {
  var cartItems = <Vegetable>[].obs;

  void addToCart(Vegetable vegetable) {
    cartItems.add(vegetable);
  }
}