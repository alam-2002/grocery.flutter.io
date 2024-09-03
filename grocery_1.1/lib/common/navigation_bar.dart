import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/colors_class.dart';

class MyNavigationBar extends StatelessWidget{

  NavigationController navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return Obx(()=>
      BottomNavigationBar(
        selectedItemColor: ColorsClass.basicGreen,
        unselectedItemColor: ColorsClass.basicGrey,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (index){
          navigationController.changeIndex(index);
        },
        currentIndex: navigationController.selectedIndex.value,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class NavigationController extends GetxController {

  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;

    if(selectedIndex == 0) {
      // Get.to(HomeScreen());
    }
    else if(selectedIndex == 1) {
      // Get.to(HomeScreen());
    }
    else if(selectedIndex == 2) {
      // Get.to(HomeScreen());
    }
    else if(selectedIndex == 3) {
      // Get.to(HomeScreen());
    }
    else if(selectedIndex == 4) {
      // Get.to(HomeScreen());
    }
  }
}