import 'dart:async';

import 'package:flutter_blue/flutter_blue.dart';

class BluetoothManager extends Object {
  static FlutterBlue flutterBlue = FlutterBlue.instance;
  static var scanSubscription;

  /// Start scanning
  void scanning() {
    scanSubscription = flutterBlue.scan().listen((scanResult) {
      // do something with scan result
      print('scanning....');
      print('name:'+scanResult.device.name);
    });
  }

  /// Stop scanning
  void cacel() {
    scanSubscription.cancel();
  }
}
