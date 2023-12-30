import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // screenHeight = 932

  // pageView=320
  static double pageView = screenHeight / 2.9125;
  // pageViewContainer = 200
  static double pageViewContainer = screenHeight / 4.66;
  // pageViewTextContainer = 120
  static double pageViewTextContainer = screenHeight / 7.77;

  //dynamic height padding and margin
  static double height10 = screenHeight / 93.2;
  static double height15 = screenHeight / 64.13;
  static double height20 = screenHeight / 46.6;
  static double height30 = screenHeight / 31.067;
  static double height45 = screenHeight / 20.71;

  //dynamic width padding and margin
  static double width10 = screenHeight / 93.2;
  static double width15 = screenHeight / 64.13;
  static double width20 = screenHeight / 46.6;
  static double width30 = screenHeight / 31.067;

  static double font20 = screenHeight / 46.6;

  //radius
  static double radius15 = screenHeight / 62.13;
  static double radius20 = screenHeight / 46.6;
  static double radius30 = screenHeight / 31.067;

  //icon size
  static double iconSize24 = screenHeight / 38.83;
}
