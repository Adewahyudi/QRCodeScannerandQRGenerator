import 'package:flutter/material.dart';
import 'package:aseet_data/styles/color.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  minimumSize: Size(200, 40),
  primary: white,
  shadowColor: Colors.black,
  elevation: 0,
  shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
    Radius.circular(50),
  )),
);
