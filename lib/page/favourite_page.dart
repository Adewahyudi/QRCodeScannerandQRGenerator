import 'package:aseet_data/screens/createqr.dart';
import 'package:aseet_data/screens/scanqr.dart';
import 'package:flutter/material.dart';

import 'package:dropdown_search/dropdown_search.dart';

import '../styles/button.dart';
import 'home_bar.dart';
import 'home_barcode.dart';

class AddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xFFEDF2F6),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: HomeBar(),

          //  title: Text('QR Code Generator and Scanner'),
          //    backgroundColor: Colors.blueGrey.shade600,
          //    centerTitle: false,
        ),
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 150),
              Row(
                children: [
                  Icon(
                    Icons.qr_code_2_outlined,
                    color: Colors.black54,
                    size: 19,
                  ),
                  Text(
                    "Create QR",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9),
              Row(
                children: [
                  Text(
                    "Mulailah membuat kode QR,\n"
                    "Masukkan kode barang.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                icon: Icon(Icons.add, color: Colors.black),
                label: Text(
                  "Create QR",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                style: buttonPrimary,
                onPressed: () {
                  print("tapped on create QR buton");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => CreateScreen(),
                    ),
                  );
                },
                //   child: Text("Create QR"),
              ),
              SizedBox(height: 80),
              Row(
                children: [
                  Icon(
                    Icons.document_scanner_outlined,
                    color: Colors.black54,
                    size: 19,
                  ),
                  Text(
                    "Scan QR",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9),
              Row(
                children: [
                  Text(
                    "Buka scan QR,\n"
                    "Pilih opsi untuk memindai.",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.black,
                ),
                label: Text(
                  "Scan QR",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                style: buttonPrimary,
                onPressed: () {
                  print("tapped on scan QR buton");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) => ScanScreen(),
                    ),
                  );
                },
                //  child: Text("Scan QR"),
              ),
            ],
          ),
        ),
      );
}
