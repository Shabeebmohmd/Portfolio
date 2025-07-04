import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/consts/device_data.dart';
import 'package:portfolio/core/colors/app_colors.dart';
import 'package:portfolio/providers/current_state.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    CurrentState currentState = Provider.of<CurrentState>(
      context,
      listen: false,
    );
    return Scaffold(
      body: Stack(
        children: [
          _backgroundGradient(),
          _backgroundImage(size),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [_buildDeviceFrame(size, currentState)],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ...List.generate(
                    devices.length,
                    (indext) => Selector<CurrentState, DeviceInfo>(
                      selector: (context, provider) => provider.currentDevice,
                      builder: (context, value, child) {
                        return _buildButtons(currentState, indext);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }

  CustomButton _buildButtons(CurrentState currentState, int indext) {
    return CustomButton(
      borderRadius: 100,
      height: 35,
      width: 35,
      animate: true,
      pressed:
          currentState.currentDevice == devices[indext].device
              ? Pressed.pressed
              : Pressed.notPressed,
      backgroundColor: AppColors.black,
      shadowColor: AppColors.white,
      onPressed: () {
        currentState.changeSelectedDevice(devices[indext].device);
      },
      isThreeD: true,
      child: Icon(devices[indext].icon, color: AppColors.white),
    );
  }

  SizedBox _buildDeviceFrame(Size size, CurrentState currentState) {
    return SizedBox(
      height: size.height - 100,
      child: Consumer<CurrentState>(
        builder: (context, value, child) {
          return DeviceFrame(
            device: currentState.currentDevice,
            screen: const Center(
              child: Text('Shabeeb', style: TextStyle(color: Colors.white)),
            ),
          );
        },
      ),
    );
  }

  SvgPicture _backgroundImage(Size size) {
    return SvgPicture.asset(
      'assets/images/Cloudy.svg',
      height: size.height,
      fit: BoxFit.cover,
    );
  }

  Container _backgroundGradient() {
    return Container(
      decoration: BoxDecoration(gradient: AppGradientColors.gradientPrimary),
    );
  }
}
