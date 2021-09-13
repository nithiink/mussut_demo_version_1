import 'package:flutter/material.dart';
import 'package:mussut_demo_version_1/constants.dart';
import 'package:mussut_demo_version_1/sizeConfig.dart';
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
          PickupCard(),
          PickupCard(),
          PickupCard(),

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
          DropCard(),
          SizedBox(
            height: getProportionateScreenHeight(300),
          )
        ],
      ),
    );
  }
}
