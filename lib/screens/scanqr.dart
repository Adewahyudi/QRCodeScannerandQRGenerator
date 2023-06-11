import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import '../page/home_scan.dart';
import '../styles/button.dart';

class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  late double height, width;
  String qrString = "Not scanned";

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFEDF2F6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: HomeScan(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            qrString,
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          ElevatedButton.icon(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
            label: Text(
              "Scan QR Code",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),

            style: buttonPrimary,
            onPressed: scanQR,
            //  child: Text("Scan QR Code"),
          ),
          SizedBox(width: width),
        ],
      ),
    );
  }

  Future<void> scanQR() async {
    try {
      FlutterBarcodeScanner.scanBarcode("#2A99CF", "Cancel", true, ScanMode.QR)
          .then((value) {
        setState(() {
          qrString = value;
        });
      });
    } catch (e) {
      setState(() {
        qrString = "unable to read the qr";
      });
    }
  }
}
