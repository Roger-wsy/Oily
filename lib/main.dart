import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
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
    EasyLoading.instance
      ..indicatorType = EasyLoadingIndicatorType.dualRing
      ..maskType=EasyLoadingMaskType.custom
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = Colors.white
      ..backgroundColor = const Color.fromRGBO(170, 100, 170,1)
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..maskColor = const Color.fromRGBO(170, 100, 170,1).withOpacity(0.2)
      ..userInteractions = false;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const init(),
      routes: {
        Index.route:(context)=>const Index(),
        History.route:(context)=>const History()
      },
      builder: EasyLoading.init()
    );
  }
}


