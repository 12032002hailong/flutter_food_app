import 'package:flutter/material.dart';
import 'package:food_app_btl/routes/route_helper.dart';
import 'package:food_app_btl/utils/colors/colors.dart';
import 'package:food_app_btl/utils/dimensions.dart';
import 'package:food_app_btl/widgets/app_icon.dart';
import 'package:food_app_btl/widgets/big_text.dart';
import 'package:food_app_btl/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Get.toNamed(RouteHelper.getInitial());
                  },
                  child: AppIcon(icon: Icons.clear),
                ),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: "Sliver app bar",
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "../../../assets/image/food07.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                      text:
                          "For my Chicken Biryani recipe, I've simplified the preparation a bit by marinating the chicken in a spicy mixture of garam masala, garlic, ginger, chili peppers, coriander leaves, and garlic. When fried, the spices and aromatics on the exterior of the chicken caramelize into an insanely flavorful crust. I like to make the fried onions separately, as it allows you to fully caramelize them into a sweet umami-packed layer that contrasts the spicy, savory chicken. For the rice, a quick par-boil with whole spices like cardamom, bay leaves, and cumin infuses some flavor, while ensuring the rice is tender enough steam after the Biryani is assembled.For my Chicken Biryani recipe, I've simplified the preparation a bit by marinating the chicken in a spicy mixture of garam masala, garlic, ginger, chili peppers, coriander leaves, and garlic. When fried, the spices and aromatics on the exterior of the chicken caramelize into an insanely flavorful crust. I like to make the fried onions separately.For my Chicken Biryani recipe, I've simplified the preparation a bit by marinating the chicken in a spicy mixture of garam masala, garlic, ginger, chili peppers, coriander leaves, and garlic. When fried, the spices and aromatics on the exterior of the chicken caramelize into an insanely flavorful crust. I like to make the fried onions separately, as it allows you to fully caramelize them into a sweet umami-packed layer that contrasts the spicy, savory chicken. For the rice, a quick par-boil with whole spices like cardamom, bay leaves, and cumin infuses some flavor, while ensuring the rice is tender enough steam after the Biryani is assembled.For my Chicken Biryani recipe, I've simplified the preparation a bit by marinating the chicken in a spicy mixture of garam masala, garlic, ginger, chili peppers, coriander leaves, and garlic.For my Chicken Biryani recipe, I've simplified the preparation a bit by marinating the chicken in a spicy mixture of garam masala, garlic, ginger, chili peppers, coriander leaves, and garlic. When fried, the spices and aromatics on the exterior of the chicken caramelize into an insanely flavorful crust. I like to make the fried onions separately, as it allows you to fully caramelize them into a sweet umami-packed layer that contrasts the spicy, savory chicken. For the rice, a quick par-boil with whole spices like cardamom, bay leaves, and cumin infuses some flavor, while ensuring the rice is tender enough steam after the Biryani is assembled.For my Chicken Biryani recipe, I've simplified the preparation a bit by marinating the chicken in a spicy mixture of garam masala, garlic, ginger, chili peppers, coriander leaves, and garlic. When fried, the spices and aromatics on the exterior of the chicken caramelize into an insanely flavorful crust. I like to make the fried onions separately, as it allows you to fully caramelize them into a sweet umami-packed layer that contrasts the spicy, savory chicken. For the rice, a quick par-boil with whole spices like cardamom, bay leaves, and cumin infuses some flavor, while ensuring the rice is tender enough steam after the Biryani is assembled.For my Chicken Biryani recipe, I've simplified the preparation a bit by marinating the chicken in a spicy mixture of garam masala, garlic, ginger, chili peppers, coriander leaves, and garlic."),
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                )
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.width10,
              bottom: Dimensions.width10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    size: Dimensions.font26,
                    icon: Icons.remove),
                BigText(
                  text: "\$12.88" + "X" + "0",
                  color: AppColors.mainBlackColor,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
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
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: Colors.white),
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
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
        ],
      ),
    );
  }
}
