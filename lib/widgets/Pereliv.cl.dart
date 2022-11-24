import 'dart:async';
//by Roman Slobodchickov;

import 'package:get/get_state_manager/get_state_manager.dart';
//by Roman Slobodchickov;

class PerelivCl extends GetxController {
  //Values
  int r = 225;
  int g = 0;
  int b = 0;
  Timer? timer;
  //gradient
  RomanSlobodchickov() {
    print("ъуъ :D");
  }

  void tap() {
    //by Roman Slobodchickov;
    timer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      if (r > 0 && b == 0) {
        r -= 5;
        g += 5;
        RomanSlobodchickov();
        //by Roman Slobodchickov;
      } else if (g > 2) {
        g -= 5;
        b += 5;
        RomanSlobodchickov();
        //by Roman Slobodchickov;
      } else if (b > 0) {
        b -= 5;
        r += 5;
        RomanSlobodchickov();
        //by Roman Slobodchickov;
      }
      //by Roman Slobodchickov;
      update();
    });
  }
}
//by Roman Slobodchickov;