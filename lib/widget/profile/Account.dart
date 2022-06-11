import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(180, 180, 180, 0.3),
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ]
      ),
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Account",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.person_rounded, color: Color(0xFF92A3FD)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Personal data",
                      style: TextStyle(
                        fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                ),
              ),
              Icon(Icons.navigate_next)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.calendar_today, color: Color(0xFF92A3FD)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Achievement",
                      style: TextStyle(
                          fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                ),
              ),
              Icon(Icons.navigate_next)
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Icon(Icons.shop_outlined, color: Color(0xFF92A3FD)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Register as Merchant",
                      style: TextStyle(
                          fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                ),
              ),
              Icon(Icons.navigate_next)
            ],
          )
        ],
      ),
    );
  }
}
