import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'dart:async';
//by Roman Slobodchickov;

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
class Button extends StatelessWidget {
  const Button({Key? key, required this.nameButton, required this.operation})
      : super(key: key);

  final String nameButton;
  final VoidCallback operation;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PerelivCl>(
      init: PerelivCl(),
      builder: (controller) {
        return ElevatedButton(
          onPressed: () {
            () {
              controller.tap();
              operation();
            };
          },
          child: Text(nameButton),
          style: ElevatedButton.styleFrom(
            primary:
                Color.fromARGB(225, controller.r, controller.g, controller.b),
          ),
        );
      },
    );
  }
}
