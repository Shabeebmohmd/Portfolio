import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/colors/app_colors.dart';
import 'package:portfolio/model/apps_model.dart';
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
];

List<AppsModel> apps = [
  AppsModel(
    title: 'About',
    color: AppColors.white,
    icon: Icons.supervised_user_circle,
  ),
  AppsModel(
    title: 'Linked In',
    color: AppColors.white,
    icon: Icons.supervised_user_circle,
  ),
  AppsModel(
    title: 'Github',
    color: AppColors.white,
    icon: Icons.supervised_user_circle,
  ),
  AppsModel(
    title: 'Resume',
    color: AppColors.white,
    icon: Icons.supervised_user_circle,
  ),
  AppsModel(
    title: 'Project-1',
    color: AppColors.white,
    icon: Icons.supervised_user_circle,
  ),
  AppsModel(
    title: 'Project-2',
    color: AppColors.white,
    icon: Icons.supervised_user_circle,
  ),
];

const String linkedIn = 'www.linkedin.com/in/muhammed-shabeeb-34b21a31b';
const String gitHub = 'https://github.com/Shabeebmohmd';
const String resumeLink =
    'https://drive.google.com/file/d/1H0giqvjBL_6wcU1IWSSzS64sqobAjslG/view?usp=sharing';
const String email = 'muhammedshabeeb488@gmail.com';
const String introduction =
    "Hi, I’m Muhammed Shabeeb\n\nI’m a passionate Flutter developer focused on building clean, responsive, and user-friendly mobile applications. With hands-on experience in creating offline-first apps using Hive and Firebase-powered projects, I specialize in crafting smooth cross-platform experiences.\nFrom fitness apps to e-commerce platforms, I love turning ideas into real-world solutions with a sharp eye for detail and performance. Whether it's integrating APIs, optimizing UI/UX, or writing clean Dart code I enjoy every part of the development journey.\n Welcome to my portfolio! Take a look at some of my featured projects and feel free to reach out for collaborations or opportunities.";
const String projectAdmin =
    'https://apkpure.net/solespace-admin/com.example.sole_space_admin';
const String projectUser =
    'https://apkpure.net/solespace/com.shabeeb.sole_space_user';
