import 'package:device_frame/device_frame.dart';
import 'package:flutter/foundation.dart';

class CurrentState extends ChangeNotifier {
  DeviceInfo currentDevice = Devices.ios.iPhone16ProMax;

  void changeSelectedDevice(DeviceInfo device) {
    currentDevice = device;
    notifyListeners();
  }
}
