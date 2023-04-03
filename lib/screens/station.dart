// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_const_constructors

import 'package:car_app/screens/Navigator.dart';
import 'package:flutter/material.dart';

class StationScreen extends StatelessWidget {
  const StationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("Charging "),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => NavigaorScreen()));
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => StationScreen()));
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ))
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              color: Color.fromARGB(255, 55, 55, 55),
            ),
            margin: EdgeInsets.all(8),
            width: 370,
            height: 75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.ev_station,
                        color: Color.fromARGB(193, 126, 251, 104),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        "Monte Station ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.info_outline_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    '5072 High way 7 felton  California , US ',
                    style: TextStyle(color: Color.fromARGB(139, 255, 255, 255)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                    image: AssetImage(
                      "images/jeb_front_p.png",
                    ),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 20,
            width: 20,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Charging ",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                  Text(
                    "72 % ",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 10,
                      child: Icon(
                        Icons.electric_bolt_rounded,
                        color: Colors.white,
                        size: 10,
                      ),
                    ),
                  ),
                  Text(
                    " Fast charging  ",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 82,
                  ),
                  Text(
                    " 127 mil remaining distance  ",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 350,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromARGB(255, 59, 54, 54),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "2h 36m ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Text(
                      "Charging Time . 7.49 Voltage",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
                Image.asset(
                  "images/battarys.png",
                  width: 400,
                  height: 100,
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
