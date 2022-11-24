import 'dart:async';

import 'package:get/get_state_manager/get_state_manager.dart';

class TestCl extends GetxController {
  int r = 225;
  int g = 0;
  int b = 0;
  Timer? timer;
  void tap() {
    timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      if (r > 0 && b == 0) {
        r -= 5;
        g += 5;
      } else if (g > 2) {
        g -= 5;
        b += 5;
      } else if (b > 0) {
        b -= 5;
        r += 5;
      }
      update();
    });
  }
}
