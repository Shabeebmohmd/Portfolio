import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/model/color_model.dart';
import 'package:portfolio/model/device_model.dart';

List<DeviceModel> devices = [
  DeviceModel(device: Devices.android.samsungGalaxyS25, icon: Icons.android),
  DeviceModel(device: Devices.ios.iPhone16ProMax, icon: Icons.apple),
  DeviceModel(device: Devices.ios.iPadPro13InchesM4, icon: Icons.tablet),
];

List<ColorModel> colorPallete = [
  ColorModel(
    color: Colors.amber,
    gradient: LinearGradient(
      colors: [Colors.amber, Colors.deepOrange],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    svgPath: 'assets/images/cloudyRed.svg',
  ),
  ColorModel(
    color: Colors.purple,
    gradient: LinearGradient(
      colors: [Colors.purpleAccent, const Color.fromARGB(255, 19, 9, 38)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    svgPath: 'assets/images/cloudyPurple.svg',
  ),
  ColorModel(
    color: Colors.blue,
    gradient: LinearGradient(
      colors: [Colors.blueAccent, const Color.fromARGB(255, 0, 28, 77)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    svgPath: 'assets/images/cloudyBlue.svg',
  ),
  ColorModel(
    color: Colors.teal,
    gradient: LinearGradient(
      colors: [Colors.teal, const Color.fromARGB(255, 1, 45, 40)],
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
    ),
    svgPath: 'assets/images/cloudyTeal.svg',
  ),
  // ColorModel(
  //   color: Colors.amber,
  //   gradient: LinearGradient(
  //     colors: [Colors.amber, Colors.deepOrange],
  //     begin: Alignment.bottomLeft,
  //     end: Alignment.topRight,
  //   ),
  //   svgPath: 'assets/images/cloudyRed',
  // ),
  // ColorModel(
  //   color: Colors.amber,
  //   gradient: LinearGradient(
  //     colors: [Colors.amber, Colors.deepOrange],
  //     begin: Alignment.bottomLeft,
  //     end: Alignment.topRight,
  //   ),
  //   svgPath: 'assets/images/cloudyRed',
  // ),
  // ColorModel(
  //   color: Colors.amber,
  //   gradient: LinearGradient(
  //     colors: [Colors.amber, Colors.deepOrange],
  //     begin: Alignment.bottomLeft,
  //     end: Alignment.topRight,
  //   ),
  //   svgPath: 'assets/images/cloudyRed',
  // ),
  // ColorModel(
  //   color: Colors.amber,
  //   gradient: LinearGradient(
  //     colors: [Colors.amber, Colors.deepOrange],
  //     begin: Alignment.bottomLeft,
  //     end: Alignment.topRight,
  //   ),
  //   svgPath: 'assets/images/cloudyRed',
  // ),
  // ColorModel(
  //   color: Colors.amber,
  //   gradient: LinearGradient(
  //     colors: [Colors.amber, Colors.deepOrange],
  //     begin: Alignment.bottomLeft,
  //     end: Alignment.topRight,
  //   ),
  //   svgPath: 'assets/images/cloudyRed',
  // ),
  // ColorModel(
  //   color: Colors.amber,
  //   gradient: LinearGradient(
  //     colors: [Colors.amber, Colors.deepOrange],
  //     begin: Alignment.bottomLeft,
  //     end: Alignment.topRight,
  //   ),
  //   svgPath: 'assets/images/cloudyRed',
  // ),
];
