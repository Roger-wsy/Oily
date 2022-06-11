import 'package:flutter/material.dart';
import 'package:oily/widget/profile/Account.dart';
import 'package:oily/widget/profile/Other.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Center(
          child: Text("Profile",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold
              )
          ),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,

      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Stefani Wong",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Container(
                    child: Material(
                        color: Color(0xFF92A3FD),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){

                          },
                          splashColor: Color(0x229DCEFF),
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          highlightColor: Colors.transparent,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(25, 10, 25, 10),
                              child: Text("Edit",
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
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Account(),
              SizedBox(
                height: 20,
              ),
              Other()
            ],
          ),
        ),
      )
    );
  }
}
