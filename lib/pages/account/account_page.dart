import 'package:flutter/material.dart';
import 'package:food_app_btl/base/custome_loader.dart';
import 'package:food_app_btl/controllers/auth_controller.dart';
import 'package:food_app_btl/controllers/cart_controller.dart';
import 'package:food_app_btl/controllers/user_controller.dart';
import 'package:food_app_btl/routes/route_helper.dart';
import 'package:food_app_btl/utils/colors/colors.dart';
import 'package:food_app_btl/utils/dimensions.dart';
import 'package:food_app_btl/widgets/account_widget.dart';
import 'package:food_app_btl/widgets/app_icon.dart';
import 'package:food_app_btl/widgets/big_text.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool _userLoggedIn = Get.find<AuthController>().userLoggedIn();
    Get.find<UserController>().getUserInfo();

    if (!_userLoggedIn) {
      Get.find<UserController>().getUserInfo();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(
          text: 'Profile',
          size: 24,
        ),
      ),
      body: GetBuilder<UserController>(
        builder: (userController) {
          return !_userLoggedIn
              ? (userController.isLoading
                  ? Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(top: Dimensions.height20),
                      child: Column(
                        children: [
                          //profile
                          AppIcon(
                            icon: Icons.person,
                            backgroundColor: AppColors.mainColor,
                            iconColor: Colors.white,
                            iconSize: Dimensions.height15 * 5,
                            size: Dimensions.height15 * 10,
                          ),
                          SizedBox(
                            height: Dimensions.height30,
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  //name
                                  AccountWidget(
                                    appIcon: AppIcon(
                                      icon: Icons.person,
                                      backgroundColor: AppColors.mainColor,
                                      iconColor: Colors.white,
                                      iconSize: Dimensions.height10 * 5 / 2,
                                      size: Dimensions.height10 * 5,
                                    ),
                                    bigText: BigText(
                                      text: userController.userModel.name,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Dimensions.height30,
                                  ),
                                  //phone
                                  AccountWidget(
                                    appIcon: AppIcon(
                                      icon: Icons.phone,
                                      backgroundColor: AppColors.yellowColor,
                                      iconColor: Colors.white,
                                      iconSize: Dimensions.height10 * 5 / 2,
                                      size: Dimensions.height10 * 5,
                                    ),
                                    bigText: BigText(
                                      text: userController.userModel.phone,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Dimensions.height30,
                                  ),
                                  //email
                                  AccountWidget(
                                    appIcon: AppIcon(
                                      icon: Icons.email,
                                      backgroundColor: AppColors.yellowColor,
                                      iconColor: Colors.white,
                                      iconSize: Dimensions.height10 * 5 / 2,
                                      size: Dimensions.height10 * 5,
                                    ),
                                    bigText: BigText(
                                      text: userController.userModel.email,
                                    ),
                                  ),
                                  SizedBox(
                                    height: Dimensions.height30,
                                  ),
                                  //address
                                  AccountWidget(
                                    appIcon: AppIcon(
                                      icon: Icons.location_on,
                                      backgroundColor: AppColors.yellowColor,
                                      iconColor: Colors.white,
                                      iconSize: Dimensions.height10 * 5 / 2,
                                      size: Dimensions.height10 * 5,
                                    ),
                                    bigText: BigText(
                                      text: "Messages",
                                    ),
                                  ),
                                  SizedBox(
                                    height: Dimensions.height30,
                                  ),
                                  //message
                                  AccountWidget(
                                    appIcon: AppIcon(
                                      icon: Icons.message,
                                      backgroundColor: Colors.redAccent,
                                      iconColor: Colors.white,
                                      iconSize: Dimensions.height10 * 5 / 2,
                                      size: Dimensions.height10 * 5,
                                    ),
                                    bigText: BigText(
                                      text: "Messages",
                                    ),
                                  ),
                                  SizedBox(
                                    height: Dimensions.height30,
                                  ),

                                  //logout
                                  GestureDetector(
                                    onTap: () {
                                      // if (Get.find<AuthController>().userLoggedIn()) {
                                      //   Get.find<AuthController>().clearSharedData();
                                      //   Get.find<CartController>().clear();
                                      //   Get.find<CartController>().clearCartHistory();

                                      //   Get.offNamed(RouteHelper.getSignInPage());
                                      // }

                                      Get.find<AuthController>()
                                          .clearSharedData();
                                      Get.find<CartController>().clear();
                                      Get.find<CartController>()
                                          .clearCartHistory();

                                      Get.offNamed(RouteHelper.getSignInPage());
                                    },
                                    child: AccountWidget(
                                      appIcon: AppIcon(
                                        icon: Icons.logout,
                                        backgroundColor: Colors.redAccent,
                                        iconColor: Colors.white,
                                        iconSize: Dimensions.height10 * 5 / 2,
                                        size: Dimensions.height10 * 5,
                                      ),
                                      bigText: BigText(
                                        text: "Logout",
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: Dimensions.height30,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : CustomLoader())
              : Container(
                  child: Center(
                    child: Text("You must login!"),
                  ),
                );
        },
      ),
    );
  }
}
