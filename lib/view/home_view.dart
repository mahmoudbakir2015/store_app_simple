import 'package:flutter/material.dart';
import 'package:store_app/constant/colors.dart';
import 'package:store_app/model/products_model.dart';
import 'package:store_app/view/product_detail.dart';
import 'package:store_app/view/widget/product_card.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 30,
              right: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.playlist_add_check,
                  color: primaryColor,
                ),
                Text(
                  "مرحبا بكم بمتجر الالكترونيات",
                  style: TextStyle(
                    color: primaryColor,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: products.length,
                itemBuilder: (BuildContext context, int i) {
                  return GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      child: ProductCard(
                        image: products[i].image,
                        price: products[i].price,
                        title: products[i].title,
                        subTitle: products[i].subTitle,
                      ),
                    ),
                    onTap: () {
                      Get.to(() => ProductDetail(), arguments: [
                        {
                          "images": products[i].image,
                          "price": products[i].price,
                          "id": products[i].id,
                          "title": products[i].title,
                          "description": products[i].description,
                        }
                      ]);
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
