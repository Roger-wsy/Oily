import 'package:flutter/material.dart';

class Price_Chart extends StatefulWidget {
  const Price_Chart({Key? key}) : super(key: key);

  @override
  _Price_ChartState createState() => _Price_ChartState();
}

class _Price_ChartState extends State<Price_Chart> {
  @override
  Widget build(BuildContext context) {
    return Container(
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

        ],
      ),
    );
  }
}

