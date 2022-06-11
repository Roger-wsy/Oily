import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:oily/screen/Home.dart';
import 'package:oily/screen/Profile.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:oily/screen/QRScanner.dart';

class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  static final route = "/index";

  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int number = 0;
  String _text = "";
  XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [Home(), QRScanner(), Profile()];

    return Scaffold(
      body: pages[number],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFFEEA4CE),
        onPressed: () {
          getImage(ImageSource.camera);
        },
        child: Container(
          width: 60,
          height: 60,
          child: Icon(
            Icons.camera_alt_outlined,
            size: 30,
          ),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  colors: [Color(0xFF92A3FD), Color(0xFF9DCEFF)])),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFFC58BF2),
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        currentIndex: number,
        onTap: (value) {
          setState(() {
            number = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_sharp), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_rounded), label: ""),
        ],
      ),
    );
  }

  void getImage(ImageSource source) async {
    try {
      final pickedImage = await ImagePicker().pickImage(source: source);
      if (pickedImage != null) {
        imageFile = pickedImage;
        setState(() {});
        getRecognisedText(pickedImage);
      }
    } catch (e) {
      imageFile = null;
      setState(() {});
      _text = 'Error';
    }
  }

  void getRecognisedText(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    final textDetector = GoogleMlKit.vision.textRecognizer();
    RecognizedText recognizedText = await textDetector.processImage(inputImage);
    await textDetector.close();
    _text = "";
    final regex = RegExp(
        r'(1[1-9]|21|[37][1-6]|5[1-3]|6[1-5]|[89][12])\d{2}\d{2}([04][1-9]|[1256][0-9]|[37][01])(0[1-9]|1[0-2])\d{2}\d{4}',
        multiLine: true);
    for (TextBlock block in recognizedText.blocks) {
      for (TextLine line in block.lines) {
        if (regex.hasMatch(line.text)) {
          _text = line.text;
        }
      }
    }
    print(_text);
    setState(() {});
  }
}
