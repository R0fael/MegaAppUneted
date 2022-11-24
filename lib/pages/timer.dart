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
            backgroundColor: Color.fromARGB(223, 174, 232, 255),
            body: Column(children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.width * 0.53,
                  width: MediaQuery.of(context).size.width * 0.53,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 252, 252),
                    borderRadius: BorderRadius.circular(300.00),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(223, 11, 93, 126),
                          offset: Offset(0.0, 0.0),
                          blurRadius: 10.00),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      '${controller.seconds}',
                      style: const TextStyle(
                        fontSize: 50.00,
                        color: Color(0xE036393E),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Expanded(child: BuildButtons(controller))
            ]),
          );
        });
  }

  BuildButtons(TimerCl controller) {
    if (controller.seconds == 0) {
      return ButtonT(
        nameButton: "start",
        operation: () {
          controller.StartTimer();
        },
      );
    }
    if (controller.seconds != 0 && controller.start == true) {
      return ButtonT(
        nameButton: "Pause",
        operation: () {
          controller.StopTimer();
        },
      );
    }
    if (controller.seconds != 0 && controller.start == false) {
      return Column(
        children: [
          ButtonT(
            nameButton: "Resumue",
            operation: () {
              controller.StartTimer();
            },
          ),
          //SizedBox(width: MediaQuery.of(context).size.height * 0.09),
          ButtonT(
            nameButton: "Stop",
            operation: () {
              controller.Reset();
            },
          ),
        ],
      );
    }
  }
}
