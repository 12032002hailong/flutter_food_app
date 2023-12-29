import 'package:flutter/material.dart';
import 'package:food_app_btl/colors/colors.dart';
import 'package:food_app_btl/home/food_page_body.dart';
import 'package:food_app_btl/widgets/big_text.dart';
import 'package:food_app_btl/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        //showing the header
        Container(
          margin: EdgeInsets.only(top: 45, bottom: 45),
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  BigText(
                    text: 'VietNam',
                    color: AppColors.mainColor,
                  ),
                  Row(
                    children: [
                      SmallText(
                        text: "HaNoi",
                      ),
                      Icon(Icons.arrow_drop_down_rounded)
                    ],
                  )
                ],
              ),
              Container(
                width: 45,
                height: 45,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.mainColor),
              )
            ],
          ),
        ),

        //showing the body
        FoodPageBody(),
      ],
    ));
  }
}
