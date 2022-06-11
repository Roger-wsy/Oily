import 'package:flutter/material.dart';
import 'package:oily/screen/GetStarted.dart';
import 'package:oily/screen/Splash.dart';

class init extends StatefulWidget {
  const init({Key? key}) : super(key: key);

  @override
  _initState createState() => _initState();
}

class _initState extends State<init> {
  Future<String> getData()async{
    await Future.delayed(Duration(seconds: 1));
    return "a";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getData(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              return GetStarted();
            }else{
              return Splash();
            }
          }
        ),
      );
  }
}
