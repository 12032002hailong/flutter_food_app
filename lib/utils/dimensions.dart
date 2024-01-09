import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // screenHeight = 932
  // screenWidth = 430.4

  // pageView=320
  static double pageView = screenHeight / 2.9125;
  // pageViewContainer = 200
  static double pageViewContainer = screenHeight / 4.66;
  // pageViewTextContainer = 120
  static double pageViewTextContainer = screenHeight / 7.76;

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

  //font size
  static double font16 = screenHeight / 58.25;
  static double font20 = screenHeight / 46.6;
  static double font26 = screenHeight / 35.846;

  //radius
  static double radius15 = screenHeight / 62.13;
  static double radius20 = screenHeight / 46.6;
  static double radius30 = screenHeight / 31.067;

  //icon size
  static double iconSize24 = screenHeight / 38.83;
  static double iconSize16 = screenHeight / 58.25;

  //list view size
  static double listViewImgSize = screenWidth / 3.5867;
  static double listViewTextContSize = screenWidth / 4.304;

  //popular food
  static double popularFoodImgSize = 350;

  //bottom height
  static double bottomHeightBar = screenHeight / 7.77;
}
