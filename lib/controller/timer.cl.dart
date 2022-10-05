import 'dart:async';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TimerCl extends GetxController {
  int seconds = 0;
  Timer? timer;

  void StartTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (seconds >= 0) {
        seconds++;
      }
      update();
    });

    update();
  }
}
