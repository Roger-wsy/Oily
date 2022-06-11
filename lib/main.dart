import 'package:flutter/material.dart';
import 'package:oily/index.dart';
import 'package:oily/init.dart';
import 'package:oily/screen/History.dart';

void main() {
  runApp(const MyApp());
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
      home: const init(),
      routes: {
        Index.route:(context)=>const Index(),
        History.route:(context)=>const History()
      },
    );
  }
}


