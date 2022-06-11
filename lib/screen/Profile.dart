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
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Center(
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
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/avatar1.jpeg",width: 40,height: 40,),
                      const SizedBox(width: 5),
                      const Text("Stefani Wong",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Material(
                        color: const Color(0xFF92A3FD),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){

                          },
                          splashColor: const Color(0x229DCEFF),
                          focusColor: Colors.white,
                          hoverColor: Colors.white,
                          highlightColor: Colors.transparent,
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                              child: const Text("Edit",
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
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Account(),
              const SizedBox(
                height: 20,
              ),
              const Other()
            ],
          ),
        ),
      )
    );
  }
}
