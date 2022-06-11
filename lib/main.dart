import 'package:flutter/material.dart';
import 'package:oily/index.dart';
import 'package:oily/init.dart';
import 'package:oily/screen/History.dart';
import 'package:oily/screen/SelectRole.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: init(),
      routes: {
        SelectRole.route: (context) => SelectRole(),
        Index.route:(context)=>Index(),
        History.route:(context)=>History()
      },
    );
  }
}


