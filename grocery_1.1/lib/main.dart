import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/home/live_tracking/view/track_order.dart';
import 'navigation/pages.dart';
import 'navigation/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      getPages: Pages.getPages,
    );
  }
}

