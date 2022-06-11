import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';

class Scanner extends StatefulWidget {
  const Scanner({Key? key}) : super(key: key);

  @override
  _ScannerState createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  String _scanBarcode = "";
  String _text = "";
  XFile? imageFile;

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
      _text = "";
    }
  }

  void getRecognisedText(XFile image) async {
    final inputImage = InputImage.fromFilePath(image.path);
    final textDetector = GoogleMlKit.vision.textRecognizer();
    RecognizedText recognizedText = await textDetector.processImage(inputImage);
    await textDetector.close();
    String text = "";
    final regex = RegExp(
        r'(1[1-9]|21|[37][1-6]|5[1-3]|6[1-5]|[89][12])\d{2}\d{2}([04][1-9]|[1256][0-9]|[37][01])(0[1-9]|1[0-2])\d{2}\d{4}',
        multiLine: true);
    for (TextBlock block in recognizedText.blocks) {
      for (TextLine line in block.lines) {
        if (regex.hasMatch(line.text)) {
          text = line.text;
        }
      }
    }

    setState(() {
      _text = text;
    });
  }

  Future<void> scanBarcodeNormal() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.BARCODE);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height-100,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text("Scanner",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("assets/Image1.jpeg"),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                          elevation: 2,
                          color:  const Color(0xFF92A3FD),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: (){
                              getImage(ImageSource.camera);
                            },
                            splashColor: const Color(0x229DCEFF),
                            focusColor: Colors.white,
                            hoverColor: Colors.white,
                            highlightColor: Colors.transparent,
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Scanning IC",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18
                                      ),
                                    ),
                                    _text ==""?const Icon(
                                      Icons.clear,
                                      color: Colors.red,
                                      size: 40,
                                    ):
                                    const Icon(
                                      Icons.check,
                                      color: Colors.green,
                                      size: 40,
                                    )
                                  ],
                                )
                            ),
                          )
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Material(
                          elevation: 2,
                          color:  const Color(0xFF92A3FD),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: (){
                              scanBarcodeNormal();
                            },
                            splashColor: const Color(0x229DCEFF),
                            focusColor: Colors.white,
                            hoverColor: Colors.white,
                            highlightColor: Colors.transparent,
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                padding: const EdgeInsets.fromLTRB(15, 12, 15, 12),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Scanning Bar Code",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18
                                      ),
                                    ),
                                    _scanBarcode ==""?const Icon(
                                      Icons.clear,
                                      color: Colors.red,
                                      size: 40,
                                    ):
                                    const Icon(
                                      Icons.check,
                                      color: Colors.green,
                                      size: 40,
                                    )
                                  ],
                                )
                            ),
                          )
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Material(
                          elevation: 2,
                          color:  (_text==""||_scanBarcode=="")?Colors.grey:const Color(0xFF92A3FD),
                          borderRadius: BorderRadius.circular(10),
                          child: InkWell(
                            onTap: (_text==""||_scanBarcode=="")?(){}:(){
                              final idNum = _text.replaceAll(RegExp(r'[^0-9]'),'');
                              print(idNum);
                              print(_scanBarcode);
                            },
                            splashColor: const Color(0x229DCEFF),
                            focusColor: Colors.white,
                            hoverColor: Colors.white,
                            highlightColor: Colors.transparent,
                            child: Container(
                                padding: const EdgeInsets.fromLTRB(15, 14, 15, 14),
                                child: const Text("Submit transaction",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                )
                            ),
                          )
                      ),
                    ],
                  )
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
