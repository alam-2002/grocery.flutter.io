import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_new/common/text_widget.dart';
import 'package:grocery_new/theme/colors_class.dart';
import 'package:grocery_new/utilities/constants/images_constants.dart';
import '../../../navigation/routes.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 0),
          color: Colors.grey.shade100,
          // color: Colors.red,
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(fadeLeaf),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(appLogo),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Label(
                  label: 'Get your groceries delivered to your home',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Label(
                  label:
                      'The best delivery app in town for delivering your daily fresh groceries',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  color: ColorsClass.basicGrey,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.offNamed(Routes.phoneLoginScreen);
                },
                style: ElevatedButton.styleFrom(
                  // foregroundColor: ColorsClass.basicWhite,
                  backgroundColor: ColorsClass.primaryGreen,
                  minimumSize: Size(200, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Label(
                  label: 'Shop now',
                  color: ColorsClass.basicWhite,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Image.asset(
                bottomImg,
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
