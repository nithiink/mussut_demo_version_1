import 'package:flutter/material.dart';
import 'package:mussut_demo_version_1/constants.dart';

import '../sizeConfig.dart';

class NewPackage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: getProportionateScreenHeight(60),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(60),
          ),
        ),
        centerTitle: true,
        title: Text(
          "NEW PACKAGE",
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

          _PickupCard(),
          _DropCard(),

          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          // Decline - Accept Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {},
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
                onPressed: () {},
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

class _DropCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.cyanAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        width: getProportionateScreenWidth(280),
        height: getProportionateScreenHeight(110),
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: getProportionateScreenWidth(10),
                left: 5,
              ),
              child: Text(
                "Drop Address",
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: getProportionateScreenWidth(20),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: secondaryColor,
                ),
                SizedBox(width: 5),
                Text(
                  "Drop Address",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w400,
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

class _PickupCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      shadowColor: Colors.cyanAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Container(
        width: getProportionateScreenWidth(280),
        height: getProportionateScreenHeight(180),
        padding: EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: getProportionateScreenWidth(10),
                left: 5,
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
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: primaryColor,
                ),
                SizedBox(width: 5),
                Text(
                  "Pickup Address 1",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w400,
                  ),
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
                  "Pickup Address 2",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w400,
                  ),
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
                  "Pickup Address 3",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: getProportionateScreenWidth(20),
                    fontWeight: FontWeight.w400,
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
