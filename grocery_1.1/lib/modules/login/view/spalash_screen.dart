import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_new/theme/colors_class.dart';
import 'package:grocery_new/utilities/constants/images_constants.dart';
import 'package:grocery_new/common/text_widget.dart';
import '../../../navigation/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Get.offNamed(Routes.introScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsClass.primaryGreen,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Label(
                label: 'Fresh Mart',
                  fontWeight: FontWeight.w700,
                  fontSize: 25,
                color: ColorsClass.basicWhite,
              ),
              const SizedBox(height: 10),
              Image.asset(appLogo),
            ],
          ),
        ),
      ),
    );
  }
}
