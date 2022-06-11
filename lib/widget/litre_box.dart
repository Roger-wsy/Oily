import 'package:flutter/material.dart';

class Litre_box extends StatefulWidget {
  const Litre_box({Key? key, required this.getHistory}) : super(key: key);

  final Function getHistory;
  @override
  _Litre_boxState createState() => _Litre_boxState();
}

class _Litre_boxState extends State<Litre_box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(180, 180, 180, 0.5),
            offset: Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
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
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                const Text("Cooking Oil Quota",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w800
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text("You still can sell",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500
                    )
                ),
                const SizedBox(
                  height: 15,
                ),
                Material(
                    color: const Color(0xFFC58BF2),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: (){
                        widget.getHistory();
                      },
                      splashColor: const Color(0x229DCEFF),
                      focusColor: Colors.white,
                      hoverColor: Colors.white,
                      highlightColor: Colors.transparent,
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: const Text("View History",
                            style: TextStyle(color: Colors.white),
                          ),
                          decoration: const BoxDecoration(
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
            padding: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Text("200",
                  style: TextStyle(
                    color: Color(0xFF93A7FE),
                    fontWeight: FontWeight.w800,
                    fontSize: 30
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
