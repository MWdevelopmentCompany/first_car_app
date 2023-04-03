// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("Ready to have a ride today ? ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Marcedes Models ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("images/logo-mw.png"),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 500,
              height: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/car_side.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 370,
              height: 180,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 59, 54, 54),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Charging Station",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("images/charge_station.png",
                              width: 30,
                              color: Color.fromARGB(193, 126, 251, 104)),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Monte Station ",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "5072 Highway 7 Felton,\nCalifornia,U.S",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          MaterialButton(
                            minWidth: 10,
                            shape: StadiumBorder(),
                            color: Color.fromARGB(212, 153, 255, 135),
                            onPressed: () {},
                            child: Text("4.3 Mile"),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          MaterialButton(
                            minWidth: 10,
                            shape: StadiumBorder(),
                            color: Color.fromARGB(212, 153, 255, 135),
                            onPressed: () {},
                            child: Text("62 Min"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage("images/location.png"),
                          fit: BoxFit.fill,
                        )),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 190,
                width: 170,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 55, 55, 55),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Text('Battery',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('1h 56 4s Remaining',
                          style: TextStyle(
                              color: Color.fromARGB(146, 255, 255, 255))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('images/batteryy.png',
                            height: 100, width: 70),
                        Column(
                          children: [
                            Text(
                              "72.3 Kwh",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "_________",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "272 KM",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Container(
                    width: 170,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 55, 55, 55),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "images/sun.png",
                                width: 60,
                              ),
                              Text(
                                "Californai ,US",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Text(
                            "18ْ C ",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "Day 21ْ c-Night 14ْ c ",
                              style: TextStyle(color: Colors.grey),
                            ),
                          )
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 55, 55, 55),
                    ),
                    child: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.lock_open,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Text(
                        "UnLocked ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                  )
                ],
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
