import 'package:aseet_data/util/smart_device_box.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double horizontalPadding = 40;
  final double verticalPadding = 25;

  List mySmartDevices = [
    ["Smart Barcode", "lib/icons/Smart-Barcode.png", true],
    ["Smart Scan", "lib/icons/Smart-Scan.png", false],
    ["Save Photo", "lib/icons/Save-Photo.png", false],
    ["Short Time", "lib/icons/Short-Time.png", false],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      mySmartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF2F6),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding, vertical: verticalPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.sort_outlined,
                    size: 40,
                    color: Colors.grey[800],
                  ),
                  // //Image.asset(
                  //  'lib/icons/menu.jpg',
                  //    height: 45,
                  //    color: Colors.grey[800],
                  //  ),
                  //   Icon(
                  //      Icons.person,
                  //     size: 45,
                  //      color: Colors.grey[800],
                  //    )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Home,",
                    style: TextStyle(fontSize: 20, color: Colors.grey[700]),
                  ),
                  Text(
                    "Data Assets",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Divider(
                color: Colors.grey[400],
                thickness: 1,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
              child: Text(
                "Available Features",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.grey[800],
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: mySmartDevices.length,
                padding: const EdgeInsets.all(25),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                itemBuilder: (context, index) {
                  return SmartDeviceBox(
                    smartDeviceName: mySmartDevices[index][0],
                    iconPath: mySmartDevices[index][1],
                    powerOn: mySmartDevices[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
