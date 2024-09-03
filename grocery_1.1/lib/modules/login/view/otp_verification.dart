import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import '../../../common/custom_app_bar.dart';
import '../../../common/text_widget.dart';
import '../../../navigation/routes.dart';
import '../../../theme/colors_class.dart';
import '../../../utilities/constants/images_constants.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

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
          child: Column(
            children: [
              _startSection(),
              SizedBox(height: 20),
              _otpField(),
              SizedBox(height: 10),
              _resendText(),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(Routes.homeScreen);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorsClass.primaryGreen,
                  minimumSize: Size(350, 60),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Label(
                  label: 'Login',
                  color: ColorsClass.basicWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _startSection() {
    return Container(
      child: Column(
        children: [
          Image.asset(appLogo),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.only(left: 15),
            child: Align(
              alignment: Alignment.center,
              child: Label(
                label: 'Verify your mobile number',
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: ColorsClass.greyShade600,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 18),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Label(
                label: 'OTP',
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _otpField() {
    return Container(
      alignment: Alignment.center,
      child: OTPTextField(
        length: 5,
        width: double.maxFinite,
        fieldWidth: 50,
        style: TextStyle(fontSize: 17),
        textFieldAlignment: MainAxisAlignment.spaceAround,
        fieldStyle: FieldStyle.box,
        onCompleted: (pin) {
          print("Completed: " + pin);
        },
      ),
    );
  }

  Widget _resendText() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Label(
            label: 'Didn’t received OTP? ',
            fontWeight: FontWeight.w500,
            fontSize: 17,
            color: ColorsClass.basicBlack,
          ),
          TextButton(
            onPressed: () {},
            child: Label(
              label: 'Resend code',
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: ColorsClass.basicBlue,
            ),
          ),
        ],
      ),
    );
  }
}
