import 'dart:math';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pedometer/core/provider/stepcountprovider.dart';
import 'package:sensors_plus/sensors_plus.dart';

class Pedometer {
  final userAccelerometerStream = userAccelerometerEventStream();

  void startPedometer(WidgetRef ref) {
    userAccelerometerStream.listen(
        onError: (error) {
          // ignore: avoid_print
          print(error);
        },
        cancelOnError: true,
        (event) {
          _updateSteps(event.x, event.y, event.z, ref);
        });
  }

  void _updateSteps(double x, double y, double z, WidgetRef ref) {
    if (_calculateMagnitude(x, y, z) > 10) {
      ref.read(stepCountProvider.notifier).state++;
    }
  }

  _calculateMagnitude(double x, double y, double z) {
    return sqrt(x * x + y * y + z * z);
    //return pow(x * x + y * y + z * z, 0.5);
  }

  void stopPedometer() {}
}
