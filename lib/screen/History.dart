import 'package:flutter/material.dart';
import 'package:oily/widget/history_component.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  static final route = '/history';
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text("Purchase History",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold
            )
          ),
          shadowColor: Colors.transparent,
          backgroundColor: Colors.white,

        ),
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
        child: ListView(
          children: [
            History_component(),
            History_component(),
            History_component(),
            History_component()
          ],
        ),
      ),
    );
  }
}
