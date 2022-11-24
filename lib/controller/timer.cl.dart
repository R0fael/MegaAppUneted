import 'dart:async';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TimerCl extends GetxController {
  bool start = false;

  int seconds = 0;
  Timer? timer;

  void StartTimer() {
    if (start == false) {
      start = true;
      timer = Timer.periodic(const Duration(seconds: 1), (_) {
        if (seconds >= 0) {
          seconds++;
        }
        update();
      });
    }
    update();
  }

  void StopTimer() {
    start = false;
    timer?.cancel();
    update();
  }

  void Reset() {
    seconds = 0;
    update();
  }
}
