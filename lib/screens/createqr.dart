import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

import '../page/home_bar.dart';
import '../page/home_barcode.dart';
import '../styles/button.dart';

class CreateScreen extends StatefulWidget {
  @override
  _CreateScreenState createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  String qrString = "Add Data";

  void saveImage() async {
    await GallerySaver.saveImage(qrString, toDcim: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF2F6),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: HomeBarcode(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BarcodeWidget(
            color: Colors.black,
            data: qrString,
            height: 250,
            width: 250,
            barcode: Barcode.qrCode(),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //   Icon(
              //    Icons.location_on,
              //    color: Color(0xFFF65959),
              //    ),
              Text(
                "Create barcodes here",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * .8,
            child: TextField(
              onChanged: (val) {
                setState(() {
                  qrString = val;
                });
              },
              decoration: InputDecoration(
                hintText: "Enter your data here",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 2),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(height: 10),
          ElevatedButton.icon(
            label: Text(
              "Save image to gallery",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            icon: Icon(
              Icons.save,
              color: Colors.black,
            ),
            style: buttonPrimary,
            onPressed: () {
              saveImage();
            },
            //  child: const Text('Save image to gallery'))
          ),
        ],
      ),
    );
  }
}

class GallerySaver {
  static saveImage(String qrString, {required bool toDcim}) {}
}
