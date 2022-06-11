import 'package:flutter/material.dart';
import 'package:oily/screen/Home.dart';
import 'package:oily/screen/Profile.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  static final route = "/index";

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int number =  0;
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Home(),
      Profile()
    ];

    return Scaffold(
      body: pages[number],

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFEEA4CE),
        onPressed: (){},
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            Icons.camera_alt_outlined,
            size: 30,
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: [
                Color(0xFF92A3FD),
                Color(0xFF9DCEFF)
              ])
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFFC58BF2),
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        currentIndex: number,

        onTap: (value){
          setState(() {
            number = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded),label: ""),
        ],
      ),
    );
  }
}
