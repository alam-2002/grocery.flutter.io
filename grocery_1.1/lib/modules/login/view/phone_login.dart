import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_new/common/custom_app_bar.dart';
import '../../../common/text_widget.dart';
import '../../../navigation/routes.dart';
import '../../../theme/colors_class.dart';
import '../../../utilities/constants/images_constants.dart';

class PhoneLoginScreen extends StatelessWidget {
  const PhoneLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar(
        appBar: AppBar(),
        title: '',
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset(appLogo),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Label(
                  label: 'Enter your mobile number',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Label(
                  label: 'We will send you a verification code',
                  // maxLines: 2,
                  textAlign: TextAlign.center,
                  color: ColorsClass.basicGrey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: ColorsClass.basicBlack),
                ),
                margin: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CountryListPick(
                      appBar: AppBar(
                        iconTheme: IconThemeData(
                          color: ColorsClass.basicWhite,
                        ),
                        leading: GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            size: 25,
                          ),
                        ),
                        centerTitle: true,
                        backgroundColor: ColorsClass.primaryGreen,
                        title: Label(
                          label: 'Choose Your Contry',
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: ColorsClass.basicWhite,
                        ),
                      ),
                      theme: CountryTheme(
                        alphabetSelectedBackgroundColor:
                            ColorsClass.primaryGreen,
                        isShowFlag: false,
                        isShowTitle: false,
                        isShowCode: true,
                        isDownIcon: false,
                        showEnglishName: true,
                      ),
                      initialSelection: '+91',
                      onChanged: (CountryCode? code) {},
                      useUiOverlay: true,
                      useSafeArea: false,
                    ),
                    Label(
                      label: '|',
                      fontSize: 35,
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.otpScreen);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsClass.primaryGreen,
                  minimumSize: Size(320, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Label(
                  label: 'Continue',
                  color: ColorsClass.basicWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 15),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: RichText(
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'By clicking on “Continue” you are agreeing to our',
                        style: TextStyle(
                            color: ColorsClass.basicBlack, fontSize: 15),
                      ),
                      TextSpan(
                        text: ' terms of use',
                        style: TextStyle(
                            color: ColorsClass.basicBlue, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
