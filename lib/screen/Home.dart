import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oily/widget/litre_box.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                "Welcome back",
                style: TextStyle(
                  color: Color.fromRGBO(150,150, 150, 1),
                  fontSize: 15
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                "Stefani Wong",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Litre_box(),
              SizedBox(
                height: 15,
              ),
              Text(
                "Latest Price",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0x5592A3FD),
                      Color(0x559DCEFF)
                    ]
                  )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Cooking Oil Price",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text("48,400,000 IDR",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w800,
                          color: Color(0xFF92A3FD),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Purchase QR Code",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
