
import 'package:flutter/material.dart';
import 'package:oily/screen/History.dart';
import 'package:oily/screen/Home.dart';
import 'package:oily/screen/Scanner.dart';
import 'package:oily/screen/Profile.dart';


class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  static const route = "/index";

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int number = 0;
  // String _text = "";
  // XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    void getHistory(){
      setState(() {
        number = 2;
      });
    }
    List<Widget> pages = [Home(getHistory: getHistory), const Scanner(),const History(), const Profile()];

    return Scaffold(
      body: pages[number],

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFFC58BF2),
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        currentIndex: number,
        onTap: (value) {
          // if(value == 1){
          //   scanBarcodeNormal();
          // }else{
            setState(() {
              number = value;
            });
          // }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_sharp), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: ""),
        ],
      ),
    );
  }

  // }
}
