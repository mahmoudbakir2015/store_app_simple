import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store_app/view/home_view.dart';
import 'constant/colors.dart';
import 'view/product_detail.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
        ),
      ),
      initialRoute: "/home",
      getPages: [
        GetPage(
          name: "/home",
          page: () => HomeView(),
        ),
        GetPage(
          name: "/productDetail",
          page: () => ProductDetail(),
        ),
      ],
      debugShowCheckedModeBanner: false,
    ),
  );
}
