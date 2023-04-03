import 'package:car_app/screens/home.dart';
import 'package:car_app/screens/profile.dart';
import 'package:car_app/screens/station.dart';
import 'package:car_app/screens/status.dart';
import 'package:flutter/material.dart';

class NavigaorScreen extends StatefulWidget {
  const NavigaorScreen({super.key});

  @override
  State<NavigaorScreen> createState() => _NavigaorScreenState();
}

class _NavigaorScreenState extends State<NavigaorScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    StationScreen(),
    Charging_state(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            child: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  backgroundColor: Color.fromARGB(255, 55, 55, 55),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.ev_station),
                  label: 'station',
                  backgroundColor: Color.fromARGB(255, 55, 55, 55),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.assessment),
                  label: 'status',
                  backgroundColor: Color.fromARGB(255, 55, 55, 55),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2),
                  label: 'profile',
                  backgroundColor: Color.fromARGB(255, 55, 55, 55),
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Color.fromARGB(255, 0, 162, 255),
              onTap: _onItemTapped,
            ),
          ),
        ));
  }
}
