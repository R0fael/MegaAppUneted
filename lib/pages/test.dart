import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/test.cl.dart';

class Test extends StatelessWidget {
  Test({Key? key}) : super(key: key);
  int r = 0;
  int g = 0;
  int b = 0;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TestCl>(
        init: TestCl(),
        builder: (controller) {
          return ElevatedButton(
            onPressed: () {
              controller.tap();
            },
            child: Text("Test"),
            style: ElevatedButton.styleFrom(
              primary:
                  Color.fromARGB(225, controller.r, controller.g, controller.b),
            ),
          );
        });
  }
}
