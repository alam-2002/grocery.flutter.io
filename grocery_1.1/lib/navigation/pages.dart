import 'package:get/get.dart';
import 'package:grocery_new/navigation/routes.dart';
import '../bindings/all_controllers_bindings.dart';
import '../modules/home/cart/view/cart_screen.dart';
import '../modules/home/category_items/view/diary_category.dart';
import '../modules/home/category_items/view/fruits_category.dart';
import '../modules/home/category_items/view/meat_category.dart';
import '../modules/home/category_items/view/vegetables_category.dart';
import '../modules/home/home_screen/view/home_screen.dart';
import '../modules/home/live_tracking/view/track_order.dart';
import '../modules/login/view/intro.dart';
import '../modules/login/view/otp_verification.dart';
import '../modules/login/view/phone_login.dart';
import '../modules/login/view/spalash_screen.dart';

class Pages {
  static List<GetPage> getPages = [
    GetPage(
      name: Routes.splashScreen,
      page: () => SplashScreen(),
    ),

    GetPage(
      name: Routes.introScreen,
      page: () => IntroScreen(),
    ),

    GetPage(
      name: Routes.phoneLoginScreen,
      page: () => PhoneLoginScreen(),
    ),

    GetPage(
      name: Routes.otpScreen,
      page: () => OtpScreen(),
    ),

    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
      binding: AllControllerBindings(),
    ),

    GetPage(
      name: Routes.diaryCategoryScreen,
      page: () => DairyCategory(),
    ),

    GetPage(
      name: Routes.fruitsCategoryScreen,
      page: () => FruitsCategory(),
    ),

    GetPage(
      name: Routes.meatCategoryScreen,
      page: () => MeatCategory(),
    ),

    GetPage(
      name: Routes.vegetablesCategoryScreen,
      page: () => VegetablesCategory(),
    ),


    GetPage(
      name: Routes.cartScreen,
      page: () => CartScreen(),
    ),

    GetPage(
      name: Routes.trackOrderScreen,
      page: () => TrackOrderScreen(),
    ),

  ];
}

