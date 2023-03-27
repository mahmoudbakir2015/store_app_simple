import 'package:flutter/material.dart';
import '../../constant/colors.dart';

class ScaffoldPanel extends StatelessWidget {
  String title, price, image, description;

  ScaffoldPanel({
    super.key,
    required this.title,
    required this.price,
    required this.image,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            top: 10,
                          ),
                          child: SizedBox(
                            height: mediaQuery.size.height * 0.20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  title,
                                  style: TextStyle(
                                    fontSize: 30,
                                  ),
                                ),
                                Text(
                                  price,
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: btnColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: btnColor,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: TextButton(
                            child: Icon(
                              Icons.add,
                              size: 40,
                              color: primaryColor,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "وصف المنتج",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    description,
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 15,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "بعض الصور",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mediaQuery.size.height * 0.20,
                    child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, int i) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              top: 20,
                              right: 8.0,
                            ),
                            child: Image.asset(
                              image,
                            ),
                          );
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: mediaQuery.size.width * 0.5,
                    decoration: BoxDecoration(
                      color: btnColor,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: MaterialButton(
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                          fontSize: 20,
                          color: primaryColor,
                        ),
                      ),
                      onPressed: () {
                        print("booked");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
