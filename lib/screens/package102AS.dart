import 'package:flutter/material.dart';
import 'package:mussut_demo_version_1/sizeConfig.dart';

import '../constants.dart';

class Package102AS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(60),
          ),
        ),
        titleSpacing: getProportionateScreenWidth(92),
        title: Text(
          "PACKAGE 102AS",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Body(),
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ListView(
        // scrollDirection: Axis.vertical,
        children: [
          // Pickup Text
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 20,
            ),
            child: Text(
              "Pickup",
              style: TextStyle(
                color: secondaryColor,
                fontSize: getProportionateScreenWidth(20),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _PickupCard(),
          _PickupCard(),
          _PickupCard(),

          SizedBox(height: getProportionateScreenHeight(30)),
          // Drop text
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30.0,
              vertical: 20,
            ),
            child: Text(
              "Drop",
              style: TextStyle(
                color: secondaryColor,
                fontSize: getProportionateScreenWidth(20),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _DropCard(),
          SizedBox(
            height: getProportionateScreenHeight(300),
          )
        ],
      ),
    );
  }
}

class _PickupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 5,
      shadowColor: Colors.cyanAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        width: double.infinity,
        height: getProportionateScreenHeight(160),
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ORDER 102ASA",
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: getProportionateScreenWidth(16),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Size: ",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "Medium",
                          style: TextStyle(
                            color: Colors.yellow[600],
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(40),
                    ),
                    Row(
                      children: [
                        Text(
                          "Quantity: ",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: primaryColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Dhyanchand Marg",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "1234567890",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: Colors.yellow[600],
                      size: getProportionateScreenWidth(40),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    Text(
                      "Pickup\nPending",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.amber[500],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    child: Text(
                      "Get OTP",
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DropCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      elevation: 5,
      shadowColor: Colors.cyanAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        width: double.infinity,
        height: getProportionateScreenHeight(135),
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: secondaryColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Dhyanchand Marg",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "1234567890",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: Colors.yellow[600],
                      size: getProportionateScreenWidth(40),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10),
                    ),
                    Text(
                      "Drop\nPending",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Card(
                  elevation: 10,
                  shadowColor: Colors.amber[500],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 10,
                    ),
                    child: Text(
                      "Enter OTP",
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: getProportionateScreenWidth(18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
