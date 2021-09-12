import 'dart:math';

import 'package:flutter/material.dart';

import '../constants.dart';
import '../sizeConfig.dart';
import 'newPackage.dart';
import 'package102AS.dart';

late bool switchIsOn;

class Home extends StatefulWidget {
  Home(bool switchStatus) {
    switchIsOn = switchStatus;
  }
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

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
        onTap: (_currentIndex) {},
        selectedItemColor: secondaryColor,
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.new_label),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: "ORDERS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            label: "EARNINGS",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_rounded),
            label: "TAB",
          ),
        ],
        selectedIconTheme: IconThemeData(opacity: 0, size: 0),
        unselectedIconTheme: IconThemeData(opacity: 0, size: 0),
        selectedLabelStyle: TextStyle(
          fontSize: getProportionateScreenWidth(14),
          fontWeight: FontWeight.bold,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: getProportionateScreenWidth(14),
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
      width: double.infinity,
      child: Column(
        children: [
          _UserDetails(),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          _CurrentBatchCard(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          _DailyReportCard(),
        ],
      ),
    );
  }
}

class _CurrentBatchCard extends StatelessWidget {
  const _CurrentBatchCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10),
      elevation: 15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        height: getProportionateScreenHeight(350),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(16),
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "Current Batch\n",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(12),
                            color: Colors.cyan,
                            fontWeight: FontWeight.w500,
                            height: getProportionateScreenHeight(2)),
                      ),
                      TextSpan(text: "PICKUP IN: "),
                      TextSpan(
                        text: "90 minutes",
                        style: TextStyle(color: secondaryColor),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.add_box,
                  size: getProportionateScreenWidth(40),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(10),
            ),
            _PackageDetailsCard(),
            _PackageDetailsCard(),
            _PackageDetailsCard(),
          ],
        ),
      ),
    );
  }
}

class _DailyReportCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        width: getProportionateScreenWidth(430),
        height: getProportionateScreenHeight(160),
        padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
            vertical: getProportionateScreenWidth(10)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: getProportionateScreenWidth(15),
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "Daily Report\n",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(12),
                            color: Colors.yellow[700],
                            fontWeight: FontWeight.w500,
                            height: getProportionateScreenHeight(2)),
                      ),
                      TextSpan(
                          text: "500 ",
                          style: TextStyle(
                              color: primaryColor,
                              fontSize: getProportionateScreenWidth(40))),
                      TextSpan(
                        text: "EARNED",
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.book,
                  size: getProportionateScreenWidth(40),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(5),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.greenAccent[700],
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "SUCCESSFUL FULLFILLMENT: ",
                            style: TextStyle(
                              color: Colors.black87.withOpacity(0.4),
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: "10"),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: secondaryColor,
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "CANCELLED FULLFILLMENT: ",
                            style: TextStyle(
                              color: Colors.black87.withOpacity(0.4),
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: "2"),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                            text: "REJECTED FULLFILLMENT: ",
                            style: TextStyle(
                              color: Colors.black87.withOpacity(0.4),
                              fontSize: getProportionateScreenWidth(14),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: "0"),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 10,
                        primary: Colors.white,
                        shadowColor: Colors.black,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () {},
                    child: Container(
                      height: getProportionateScreenHeight(50),
                      child: Row(
                        children: [
                          Text(
                            "DETAILS",
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: getProportionateScreenWidth(18),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(10),
                          ),
                          Transform.rotate(
                            angle: 270 * pi / 180,
                            child: Icon(
                              Icons.arrow_drop_down_circle_rounded,
                              color: secondaryColor,
                              size: getProportionateScreenWidth(30),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _PackageDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Package102AS()));
      },
      child: Card(
        elevation: 0,
        child: Container(
          width: getProportionateScreenWidth(430),
          height: getProportionateScreenHeight(80),
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            borderRadius: BorderRadius.circular(24),
          ),
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenWidth(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "PACKAGE 102AS",
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: getProportionateScreenWidth(14),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.bold,
                      ),
                      children: [
                        TextSpan(
                          text: "Type: ",
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.8),
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(text: "Transfer"),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.yellowAccent[700],
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: "Size: ",
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.8),
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(text: "Medium"),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: "Quantity: ",
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.8),
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(text: "12"),
                      ],
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: getProportionateScreenWidth(16),
                        fontWeight: FontWeight.w500,
                      ),
                      children: [
                        TextSpan(
                          text: "Orders: ",
                          style: TextStyle(
                            color: Colors.black87.withOpacity(0.8),
                            fontSize: getProportionateScreenWidth(16),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(text: "3"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(12),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<_UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40),
      child: Row(
        children: [
          Container(
            width: getProportionateScreenWidth(110),
            height: getProportionateScreenHeight(140),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage("assets/images/ProfilePic.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: getProportionateScreenWidth(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Welcome, ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: getProportionateScreenWidth(24),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Text(
                    "John!",
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: getProportionateScreenWidth(24),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    width: getProportionateScreenWidth(15),
                  ),
                  Card(
                    elevation: 20,
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Container(
                        width: getProportionateScreenWidth(55),
                        height: getProportionateScreenHeight(25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              size: getProportionateScreenWidth(16),
                              color: secondaryColor,
                            ),
                            SizedBox(
                              width: getProportionateScreenWidth(3),
                            ),
                            Text(
                              "4.9",
                              style: TextStyle(
                                color: secondaryColor,
                                fontSize: getProportionateScreenWidth(14),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(5),
              ),
              Padding(
                padding: EdgeInsets.only(left: getProportionateScreenWidth(5)),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: secondaryColor,
                      fontSize: getProportionateScreenWidth(16),
                      fontWeight: FontWeight.bold,
                    ),
                    children: [
                      TextSpan(
                        text: "Zone: ",
                        style: TextStyle(
                          color: Colors.black87.withOpacity(0.8),
                          fontSize: getProportionateScreenWidth(16),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(text: "A"),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Switch(
                    value: switchIsOn,
                    activeColor: Colors.lightGreenAccent[700],
                    onChanged: (_switchIsOn) {
                      setState(() {
                        switchIsOn = _switchIsOn;
                      });
                      if (_switchIsOn)
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => NewPackage()),
                        );
                    },
                  ),
                  Text(
                    switchIsOn ? "Online" : "Offline",
                    style: TextStyle(
                      color: switchIsOn ? Colors.green : Colors.grey,
                      fontSize: getProportionateScreenWidth(16),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
