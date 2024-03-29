import 'package:food_app_btl/controllers/auth_controller.dart';
import 'package:food_app_btl/controllers/cart_controller.dart';
import 'package:food_app_btl/controllers/popular_product_controller.dart';
import 'package:food_app_btl/controllers/recommended_product_controller.dart';
import 'package:food_app_btl/controllers/user_controller.dart';
import 'package:food_app_btl/data/api/api_client.dart';
import 'package:food_app_btl/data/repository/auth_repo.dart';
import 'package:food_app_btl/data/repository/cart_repo.dart';
import 'package:food_app_btl/data/repository/popular_product_repo.dart';
import 'package:food_app_btl/data/repository/recommended_product_repo.dart';
import 'package:food_app_btl/data/repository/user_repo.dart';
import 'package:food_app_btl/utils/app_constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);
  //api client
  Get.lazyPut(() => ApiClient(
      appBaseUrl: AppConstants.BASE_URL, sharedPreferences: Get.find()));
  Get.lazyPut(
      () => AuthRepo(apiClient: Get.find(), sharedPreferences: Get.find()));
  Get.lazyPut(() => UserRepo(apiClient: Get.find()));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo(sharedPreferences: Get.find()));

  //controllers
  Get.lazyPut(() => AuthController(authRepo: Get.find()));
  Get.lazyPut(() => UserController(userRepo: Get.find()));
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.lazyPut(() => CartController(cartRepo: Get.find()));
}
