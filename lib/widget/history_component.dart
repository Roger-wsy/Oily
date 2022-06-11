import 'package:flutter/material.dart';

class History_component extends StatefulWidget {
  const History_component({Key? key}) : super(key: key);

  @override
  _History_componentState createState() => _History_componentState();
}

class _History_componentState extends State<History_component> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.5, color: Color.fromRGBO(180, 180, 180, 0.8)),
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          const Icon(Icons.money, color: Colors.blueAccent,size: 40,),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Bought 1.2 litres",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w800
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text("10 June",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
