import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/core/colors/app_colors.dart';

class FrostedContainer extends StatelessWidget {
  final double height;
  final double width;
  const FrostedContainer({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Stack(
        children: [
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: Container(
                height: height,
                width: width,
                decoration: BoxDecoration(
                  gradient: AppGradientColors.gradientContainer,
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
