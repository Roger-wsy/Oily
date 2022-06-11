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
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(180, 180, 180, 0.3),
            offset: Offset(
              5.0,
              5.0,
            ),
            blurRadius: 10.0,
            spreadRadius: 2.0,
          ),
        ]
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Account",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: const [
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
              const Icon(Icons.navigate_next)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  children: const [
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
              const Icon(Icons.navigate_next)
            ],
          ),
        ],
      ),
    );
  }
}
