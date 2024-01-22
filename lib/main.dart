import 'package:flutter/material.dart';
import 'package:food_app_btl/controllers/popular_product_controller.dart';
import 'package:food_app_btl/controllers/recommended_product_controller.dart';
import 'package:food_app_btl/pages/cart/cart_page.dart';
import 'package:food_app_btl/pages/food/popular_food_detail.dart';
import 'package:food_app_btl/pages/food/recommended_food_detail.dart';
import 'package:food_app_btl/pages/home/main_food_page.dart';
import 'package:food_app_btl/routes/route_helper.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MainFoodPage(),
      // home: PopularFoodDetail(),
      // home: RecommendedFoodDetail(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
      // CartPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
