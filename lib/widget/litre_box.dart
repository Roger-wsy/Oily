import 'package:flutter/material.dart';
import 'package:oily/screen/History.dart';

class Litre_box extends StatefulWidget {
  const Litre_box({Key? key}) : super(key: key);

  @override
  _Litre_boxState createState() => _Litre_boxState();
}

class _Litre_boxState extends State<Litre_box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(180, 180, 180, 0.5),
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFF92A3FD),
            Color(0xFF9DCEFF)
          ]
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text("Cooking Oil Quota",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w800
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Text("Today you stull can buy",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    )
                ),
                SizedBox(
                  height: 15,
                ),
                Material(
                    color: Color(0xFFC58BF2),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, History.route);
                      },
                      splashColor: Color(0x229DCEFF),
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      highlightColor: Colors.transparent,
                      child: Container(
                          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Text("View History",
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: BoxDecoration(
                            // gradient: LinearGradient(
                            //     begin: Alignment.centerLeft,
                            //     end: Alignment.centerRight,
                            //     colors: [
                            //       Color(0xFFC58BF2),
                            //       Color(0xFFEEA4CE)
                            //     ]
                            // ),
                          )
                      ),
                    )
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("2",
                  style: TextStyle(
                    color: Color(0xFF93A7FE),
                    fontWeight: FontWeight.w800,
                    fontSize: 40
                  ),
                ),
                Text("liters",
                  style: TextStyle(
                      color: Color(0xFF93A7FE),
                      fontWeight: FontWeight.w500,
                      fontSize: 22
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
