import 'package:flutter/material.dart';
import 'package:mussut_demo_version_1/constants.dart';
import 'package:mussut_demo_version_1/sizeConfig.dart';

class PickupCard extends StatelessWidget {
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
