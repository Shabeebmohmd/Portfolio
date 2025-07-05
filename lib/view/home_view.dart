import 'package:custom_button_builder/custom_button_builder.dart';
import 'package:device_frame/device_frame.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/consts/data.dart';
import 'package:portfolio/core/colors/app_colors.dart';
import 'package:portfolio/providers/current_state.dart';
import 'package:portfolio/widgets/frosted_container.dart';
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
          _backgroundGradient(currentState),
          _backgroundImage(size, currentState),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 10,
                        ),
                        child: FrostedContainer(
                          height: 395,
                          width: 247,
                          childG: Wrap(
                            children: [
                              ...List.generate(
                                colorPallete.length,
                                (index) => Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: CustomButton(
                                      onPressed: () {
                                        currentState.changeBgColor(index);
                                      },
                                      isThreeD: true,
                                      animate: true,
                                      borderRadius: 100,
                                      height: 55,
                                      width: 100,
                                      shadowColor: AppColors.white,
                                      backgroundColor:
                                          colorPallete[index].color,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      FrostedContainer(height: 160, width: 247),
                    ],
                  ),
                  _buildDeviceFrame(size, currentState),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 30,
                          horizontal: 10,
                        ),
                        child: FrostedContainer(height: 395, width: 247),
                      ),
                      FrostedContainer(height: 160, width: 247),
                    ],
                  ),
                ],
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
                        return _buildDeviceButton(currentState, indext);
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

  CustomButton _buildDeviceButton(CurrentState currentState, int indext) {
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

  Widget _backgroundImage(Size size, CurrentState currentState) {
    return Selector<CurrentState, int>(
      builder: (context, value, child) {
        return SvgPicture.asset(
          colorPallete[currentState.knobSelected].svgPath,
          height: size.height,
          fit: BoxFit.cover,
        );
      },
      selector: (context, provider) => currentState.knobSelected,
    );
  }

  Widget _backgroundGradient(CurrentState currentState) {
    return Selector<CurrentState, int>(
      builder: (context, value, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: colorPallete[currentState.knobSelected].gradient,
          ),
        );
      },
      selector: (context, provider) => currentState.knobSelected,
    );
  }
}
