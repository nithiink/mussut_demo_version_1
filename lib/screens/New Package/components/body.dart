import 'package:flutter/material.dart';
import 'package:mussut_demo_version_1/constants.dart';
import 'package:mussut_demo_version_1/screens/Home/home.dart';

import '../../../sizeConfig.dart';
import 'dropCard.dart';
import 'pickupCard.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // Orders, Size, Type, Quantity - Labels
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Orders: ",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "3",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Size: ",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Medium",
                          style: TextStyle(
                            color: Colors.yellow[600],
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Type: ",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Delivery",
                          style: TextStyle(
                            color: secondaryColor,
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Quantity: ",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "12",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: getProportionateScreenWidth(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          PickupCard(),
          DropCard(),

          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          // Decline - Accept Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Home(true)));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[400],
                    fixedSize: Size(getProportionateScreenWidth(150),
                        getProportionateScreenHeight(50))),
                child: Text(
                  "DECLINE",
                  style: TextStyle(
                    color: Colors.black54,
                    letterSpacing: 2,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Home(true)));
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    fixedSize: Size(getProportionateScreenWidth(160),
                        getProportionateScreenHeight(50))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "ACCEPT",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        fontSize: getProportionateScreenWidth(20),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.query_builder,
                      size: getProportionateScreenWidth(35),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
