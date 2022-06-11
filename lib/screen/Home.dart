import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oily/widget/litre_box.dart';
import 'package:oily/widget/price_chart.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.getHistory}) : super(key: key);

  final Function getHistory;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                "Welcome back",
                style: TextStyle(
                  color: Color.fromRGBO(150,150, 150, 1),
                  fontSize: 15
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "Stefani Wong",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Litre_box(getHistory: widget.getHistory),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Latest Price",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Price_Chart(),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
