import 'package:flutter/material.dart';
import 'package:mussut_demo_version_1/constants.dart';
import 'package:mussut_demo_version_1/sizeConfig.dart';

class DropCard extends StatelessWidget {
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
