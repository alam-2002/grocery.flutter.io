import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../modules/home/home_screen/controller/home_controller.dart';


class AllControllerBindings implements Bindings {
  @override
  void dependencies() {

    Get.lazyPut( () => HomeController());

  }
}
