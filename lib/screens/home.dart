import 'package:flutter/material.dart';

import '../constants.dart';
import '../sizeConfig.dart';

class Home extends StatelessWidget {
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
              onTap: () {},
            ),
            ListTile(
              title: Text("Drawer Tile 2"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Drawer Tile 3"),
              onTap: () {},
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Text("hi"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Text(""),
            label: "hi",
          ),
        ],
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                Container(
                  width: getProportionateScreenWidth(130),
                  height: getProportionateScreenHeight(180),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image(
                      image: AssetImage("assets/images/ProfilePic.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(),
                Card(
                  elevation: 20,
                  shadowColor: Colors.cyanAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                      width: getProportionateScreenWidth(30),
                      child: Row(
                        children: [
                          Icon(Icons.star),
                          Text(
                            "2",
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: getProportionateScreenWidth(20),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
