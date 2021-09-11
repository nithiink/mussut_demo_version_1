import 'package:flutter/material.dart';
import 'package:mussut_demo_version_1/screens/newPackage.dart';
import 'package:mussut_demo_version_1/screens/package102AS.dart';

import '../constants.dart';
import '../sizeConfig.dart';

class DummyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(24),
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Icon(
            Icons.notifications,
            size: getProportionateScreenWidth(30),
          ),
          SizedBox(
            width: getProportionateScreenWidth(20),
          ),
          Icon(
            Icons.search,
            size: getProportionateScreenWidth(30),
          ),
          SizedBox(
            width: getProportionateScreenWidth(10),
          ),
        ],
      ),
      body: Body(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Text("Mussut"),
              decoration: BoxDecoration(color: primaryColor),
            ),
            ListTile(
              title: Text("New Package"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPackage()),
                );
              },
            ),
            ListTile(
              title: Text("Package 102AS"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Package102AS()),
                );
              },
            ),
            ListTile(
              title: Text("Drawer Tile 3"),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.new_label),
            label: "New Package",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: "Package 102AS",
          ),
        ],
        selectedIconTheme: IconThemeData(opacity: 0, size: 0),
        unselectedIconTheme: IconThemeData(opacity: 0, size: 0),
        selectedLabelStyle: TextStyle(
          color: primaryColor,
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          color: primaryColor,
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.bold,
        ),
      ),
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
      child: Column(),
    );
  }
}
