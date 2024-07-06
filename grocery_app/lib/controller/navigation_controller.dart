import 'package:get/get.dart';
import 'package:grocery_app/home_screen.dart';

class NavigationController extends GetxController {

  var selectedIndex = 0.obs;

  void changeIndex(int index) {
    selectedIndex.value = index;

    if(selectedIndex == 0) {
      Get.to(HomeScreen());
    }
    else if(selectedIndex == 1) {
      Get.to(HomeScreen());
    }
    else if(selectedIndex == 2) {
      Get.to(HomeScreen());
    }
    else if(selectedIndex == 3) {
      Get.to(HomeScreen());
    }
    else if(selectedIndex == 4) {
      Get.to(HomeScreen());
    }
  }
}