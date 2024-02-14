import 'package:flutter/material.dart';
import 'package:food_app_btl/controllers/cart_controller.dart';
import 'package:food_app_btl/controllers/popular_product_controller.dart';
import 'package:food_app_btl/controllers/recommended_product_controller.dart';
import 'package:food_app_btl/pages/auth/sign_in_page.dart';
import 'package:food_app_btl/pages/auth/sign_up_page.dart';
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
    Get.find<CartController>().getCartData();
    return GetBuilder<PopularProductController>(
      builder: (_) {
        return GetBuilder<RecommendedProductController>(builder: (_) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            home: SignInPage(),
            // home: SplashScreen(),
            // initialRoute: RouteHelper.getInitial(),
            // initialRoute: RouteHelper.getSplashPage(),
            getPages: RouteHelper.routes,
            // home: CartPage(),
          );
        });
      },
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
