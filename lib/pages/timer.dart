import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/timer.cl.dart';
import 'package:megaapp/widgets/timer/Tb.widget.dart';

class TimerP extends StatelessWidget {
  const TimerP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TimerCl>(
        init: TimerCl(),
        builder: (controller) {
          return Scaffold(
            body: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.43,
                  width: MediaQuery.of(context).size.width * 0.43,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 252, 252),
                    borderRadius: BorderRadius.circular(300.00),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(225, 55, 63, 255),
                          offset: Offset(0.0, 0.0),
                          blurRadius: 37.00),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '${controller.seconds}',
                      style: const TextStyle(
                        fontSize: 52.00,
                        color: Color(0xE036393E),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              BuildButtons(controller)
            ]),
          );
        });
  }

  BuildButtons(TimerCl controller) {
    if (controller.seconds == 0) {
      return ButtonT(
        nameButton: "start",
        operation: () {},
      );
    }
    if (controller.seconds == 0) {
      return ButtonT(
        nameButton: "start",
        operation: () {},
      );
    }
    if (controller.seconds == 0) {
      return ButtonT(
        nameButton: "start",
        operation: () {},
      );
    }
    return const SizedBox();
  }
}
