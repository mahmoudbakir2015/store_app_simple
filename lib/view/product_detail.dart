import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:store_app/controller/product_datail_control.dart';
import '../constant/colors.dart';
import 'widget/scaffold_of_panel.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    ProductViewControl controller = Get.put(
      ProductViewControl(),
    );
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "رجوع",
          style: TextStyle(color: titColor),
        ),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: titColor,
        ),
      ),
      body: SlidingUpPanel(
        maxHeight: mediaQuery.size.height * 0.75,
        minHeight: mediaQuery.size.height * 0.25,
        parallaxEnabled: true,
        parallaxOffset: 0.5,
        controller: controller.panelController,
        color: Colors.transparent,
        body: Image.asset(
          "${Get.arguments[0]["images"]}",
          fit: BoxFit.scaleDown,
        ),
        panelBuilder: (ScrollController scrollController) {
          return ScaffoldPanel(
            title: '${Get.arguments[0]["title"]}',
            price: 'price is : ${Get.arguments[0]["price"]}',
            image: '${Get.arguments[0]["images"]}',
            description: '${Get.arguments[0]["description"]}',
          );
        },
      ),
    );
  }
}
