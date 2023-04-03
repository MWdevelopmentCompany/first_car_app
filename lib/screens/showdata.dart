// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:car_app/connection/sql.dart';
import 'package:flutter/material.dart';

import '../connection/links.dart';

class Show extends StatefulWidget {
  const Show({super.key});

  @override
  State<Show> createState() => _ShowState();
}

class _ShowState extends State<Show> with SQL {
  getCars() async {
    var response = await getRequset(linkview);
    return response; //[]
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          FutureBuilder(
              future: getCars(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  if (snapshot.data['status'] == 'fail')
                    return Center(
                      child: Text(
                        "No car Found",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics(),
                      itemCount: snapshot.data['data'].length,
                      itemBuilder: (context, i) {
                        return SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${snapshot.data['data'][i]['car_name']}",
                              ),
                              Text(
                                "${snapshot.data['data'][i]['car_model']}",
                              ),
                              Text(
                                "${snapshot.data['data'][i]['car_color']}",
                              ),
                            ],
                          ),
                        );
                      });
                }
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Center(
                  child: Text("loading.."),
                );
              }),
        ],
      )),
    );
  }
}
