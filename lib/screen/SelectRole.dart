import 'package:flutter/material.dart';
import 'package:oily/index.dart';

class SelectRole extends StatefulWidget {
  const SelectRole({Key? key}) : super(key: key);

  static final route = "/selectrole";

  @override
  _SelectRoleState createState() => _SelectRoleState();
}

class _SelectRoleState extends State<SelectRole> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [
                    Color(0xFF9DCEFF),
                    Color(0xFF92A3FD)
                  ]
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Choose role : ",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, Index.route);
                  },
                  splashColor: Color(0x229DCEFF),
                  focusColor: Colors.white,
                  hoverColor: Colors.white,
                  highlightColor: Colors.transparent,
                  child: Container(
                    width: MediaQuery.of(context).size.width-50,
                    padding: EdgeInsets.all(20),
                    child: Center(
                        child: Text("User",
                          style: TextStyle(
                              color: Color(0xFF92A3FD),
                              fontSize: 17
                          ),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Material(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                child: InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, SelectRole.route);
                  },
                  splashColor: Color(0x229DCEFF),
                  focusColor: Colors.white,
                  hoverColor: Colors.white,
                  highlightColor: Colors.transparent,
                  child: Container(
                    width: MediaQuery.of(context).size.width-50,
                    padding: EdgeInsets.all(20),
                    child: Center(
                        child: Text("Retailer",
                          style: TextStyle(
                              color: Color(0xFF92A3FD),
                              fontSize: 17
                          ),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      ),
    );
  }
}
