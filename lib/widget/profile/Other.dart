import 'package:flutter/material.dart';

class Other extends StatefulWidget {
  const Other({Key? key}) : super(key: key);

  @override
  _OtherState createState() => _OtherState();
}

class _OtherState extends State<Other> {
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
          const Text("Other",
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
                    Icon(Icons.email, color: Color(0xFF92A3FD)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Contact Us",
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
                    Icon(Icons.policy, color: Color(0xFF92A3FD)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Privacy Policy",
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
                    Icon(Icons.settings, color: Color(0xFF92A3FD)),
                    SizedBox(
                      width: 5,
                    ),
                    Text("Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.w300
                      ),
                    )
                  ],
                ),
              ),
              const Icon(Icons.navigate_next)
            ],
          )
        ],
      ),
    );
  }
}
