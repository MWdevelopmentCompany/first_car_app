// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 85,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 80,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("images/logo-mw.png"),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "MW_development.company",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
                color: Colors.white,
                indent: 50,
                endIndent: 50,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  " we are company that specializes in creating high-quality"
                  "\n"
                  " cross-platform apps using the Flutter framework."
                  "\n"
                  " The company was founded with the goal of providing businesses with a fast and efficient"
                  "\n"
                  " way to develop mobile apps that work seamlessly across multiple platforms, "
                  "including iOS and Android."
                  "Flutter's team of experienced developers uses cutting-edge technology and innovative"
                  "\n"
                  " design to create apps that are not only visually stunning but also highly "
                  "\n"
                  "functional and user-friendly."
                  "\n"
                  "They work closely with clients to understand their unique needs and goals,"
                  "\n"
                  "\n"
                  "\n"
                  "mobile apps that are designed to engage users and drive results"
                  """""",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.pink,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: FaIcon(
                        FontAwesomeIcons.github,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.facebook,
                          color: Color.fromARGB(255, 2, 121, 240))),
                ],
              ),
            ],
          ),
        )));
  }
}
