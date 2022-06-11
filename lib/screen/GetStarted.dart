import 'package:flutter/material.dart';
import 'package:oily/index.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  _GetStartedState createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
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
          children: [
            Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Oil",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontWeight: FontWeight.w800
                              )
                          ),
                          Text("Y",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.w800
                              ))
                        ],
                      ),
                      const Text(
                        "We serve to solve",
                        style: TextStyle(
                            color: Color.fromRGBO(90, 90, 90, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                )
            ),
            Material(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacementNamed(context, Index.route);
                },
                splashColor: const Color(0x229DCEFF),
                focusColor: Colors.white,
                hoverColor: Colors.white,
                highlightColor: Colors.transparent,
                child: Container(
                  width: MediaQuery.of(context).size.width-50,
                  padding: const EdgeInsets.all(20),
                  child: const Center(
                      child: Text("Get Started",
                        style: TextStyle(
                          color: Color(0xFF92A3FD)
                        ),
                      )
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
