import 'package:flutter/widgets.dart';

class AppsModel {
  String title;
  String? assetPath;
  IconData? icon;
  Color color;
  Widget? screen;
  String? link;
  AppsModel({
    required this.title,
    this.assetPath,
    this.icon,
    required this.color,
    this.screen,
    this.link,
  }) : assert(icon == null || assetPath == null);
}
