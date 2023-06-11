import 'package:flutter/material.dart';

class HomeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 6)],
                borderRadius: BorderRadius.circular(18),
              ),
              child: Icon(
                Icons.sort_rounded,
                size: 28,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.qr_code_2_outlined,
                color: Color(0xFFF65959),
              ),
              Text(
                "QR Code Generator and Scanner",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
