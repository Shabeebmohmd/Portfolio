import 'package:flutter/material.dart';

class AppColors {
  static const black = Colors.black;
  static const white = Colors.white;
}

class AppGradientColors {
  static const gradientPrimary = LinearGradient(
    colors: [Color.fromARGB(255, 0, 109, 153), Color.fromARGB(255, 18, 32, 43)],
    begin: Alignment.topLeft,
  );
  static final gradientContainer = LinearGradient(
    colors: [
      Colors.white.withValues(alpha: (0.6 * 255).toDouble()),
      Colors.white.withValues(alpha: 0.3 * 255),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
