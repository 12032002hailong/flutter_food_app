import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_app_btl/colors/colors.dart';
import 'package:food_app_btl/pages/home/icon_and_text_widget.dart';
import 'package:food_app_btl/utils/dimensions.dart';
import 'package:food_app_btl/widgets/app_column.dart';
import 'package:food_app_btl/widgets/app_icon.dart';
import 'package:food_app_btl/widgets/big_text.dart';
import 'package:food_app_btl/widgets/expandable_text_widget.dart';
import 'package:food_app_btl/widgets/small_text.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("../../assets/image/food06.jpg"))),
            ),
          ),
          //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          // introduction of food
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: 'Chinese Side'),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(text: "Introduce"),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: ExpandableTextWidget(
                            text:
                                "For my Chicken Biryani recipe, I've simplified the preparation a bit by marinating the chicken in a spicy mixture of garam masala, garlic, ginger, chili peppers, coriander leaves, and garlic. When fried, the spices and aromatics on the exterior of the chicken caramelize into an insanely flavorful crust. I like to make the fried onions separately, as it allows you to fully caramelize them into a sweet umami-packed layer that contrasts the spicy, savory chicken. For the rice, a quick par-boil with whole spices like cardamom, bay leaves, and cumin infuses some flavor, while ensuring the rice is tender enough steam after the Biryani is assembled.For my Chicken Biryani recipe, I've simplified the preparation a bit by marinating the chicken in a spicy mixture of garam masala, garlic, ginger, chili peppers, coriander leaves, and garlic. When fried, the spices and aromatics on the exterior of the chicken caramelize into an insanely flavorful crust. I like to make the fried onions separately. "),
                      ),
                    )
                  ],
                )),
          ),
          //expandable text widget
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
          top: Dimensions.height30,
          bottom: Dimensions.height30,
          left: Dimensions.width20,
          right: Dimensions.width20,
        ),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height10,
                right: Dimensions.width20,
                left: Dimensions.width20,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: '0'),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: Dimensions.height20,
                bottom: Dimensions.height10,
                right: Dimensions.width20,
                left: Dimensions.width20,
              ),
              child: BigText(
                text: "\$10 | Add to cart",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            )
          ],
        ),
      ),
    );
  }
}
