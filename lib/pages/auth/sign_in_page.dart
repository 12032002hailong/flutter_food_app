import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app_btl/base/custome_loader.dart';
import 'package:food_app_btl/base/show_custom_snackbar.dart';
import 'package:food_app_btl/controllers/auth_controller.dart';
import 'package:food_app_btl/pages/auth/sign_up_page.dart';
import 'package:food_app_btl/routes/route_helper.dart';
import 'package:food_app_btl/utils/colors/colors.dart';
import 'package:food_app_btl/utils/dimensions.dart';
import 'package:food_app_btl/widgets/app_text_field.dart';
import 'package:food_app_btl/widgets/big_text.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    var phoneController = TextEditingController();
    var passwordController = TextEditingController();

    void _login(AuthController authController) {
      // var authController = Get.find<AuthController>();

      String phone = phoneController.text.trim();
      String password = passwordController.text.trim();
      if (phone.isEmpty) {
        showCustomSnackBar("Type in your phone ", title: "Phone address");
      } else if (password.isEmpty) {
        showCustomSnackBar("Type in your password", title: "Password");
      } else if (password.length < 6) {
        showCustomSnackBar("Password can not be less than six characters",
            title: "Password");
      } else {
        authController.login(phone, password).then((status) {
          if (status.isSuccess) {
            Get.toNamed(RouteHelper.getInitial());
          } else {
            showCustomSnackBar(status.message);
          }
        });
      }
    }

    return Scaffold(
        backgroundColor: Colors.white,
        body: GetBuilder<AuthController>(builder: (authController) {
          return !authController.isLoading
              ? SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: Dimensions.screenHeight * 0.05,
                      ),
                      //app logo
                      Container(
                        height: Dimensions.screenHeight * 0.25,
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 80,
                            backgroundImage:
                                AssetImage('assets/images/logo2.jpg'),
                          ),
                        ),
                      ),
                      //welcome
                      Container(
                        margin: EdgeInsets.only(left: Dimensions.width20),
                        width: double.maxFinite,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hello",
                              style: TextStyle(
                                  fontSize: Dimensions.font20 * 3 +
                                      Dimensions.font20 / 2,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Sign in your account",
                              style: TextStyle(
                                fontSize: Dimensions.font20,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[500],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      //phone
                      AppTextField(
                          textController: phoneController,
                          hintText: "Phone",
                          icon: Icons.phone),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      //password
                      AppTextField(
                        textController: passwordController,
                        hintText: "Password",
                        icon: Icons.password_sharp,
                        isObscure: true,
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),
                      //tag line
                      Row(
                        children: [
                          Expanded(child: Container()),
                          RichText(
                            text: TextSpan(
                              text: "Sign in your account",
                              style: TextStyle(
                                color: Colors.grey[500],
                                fontSize: Dimensions.font20,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Dimensions.width10,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Dimensions.screenHeight * 0.05,
                      ),

                      //sign in button
                      GestureDetector(
                        onTap: () {
                          _login(authController);
                          Get.toNamed(RouteHelper.getInitial());
                        },
                        child: Container(
                          width: Dimensions.screenWidth / 2.5,
                          height: Dimensions.screenWidth / 7,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius30),
                              color: AppColors.mainColor),
                          child: Center(
                            child: BigText(
                              text: "Sign in",
                              size: Dimensions.font20 + Dimensions.height20 / 2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.screenHeight * 0.05,
                      ),
                      //sign in option
                      RichText(
                        text: TextSpan(
                            text: "Don\'t an account? ",
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: Dimensions.font20,
                            ),
                            children: [
                              TextSpan(
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () => Get.to(() => SignUpPage(),
                                        transition: Transition.fade),
                                  text: " Create",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.mainBlackColor,
                                    fontSize: Dimensions.font20,
                                  ))
                            ]),
                      ),
                    ],
                  ),
                )
              : CustomLoader();
        }));
  }
}
