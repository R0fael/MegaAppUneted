import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/home.cl.dart';
import 'package:megaapp/pages/test.dart';
import 'package:megaapp/pages/timer.dart';
import 'package:megaapp/pages/todo.dart';
import 'package:megaapp/pages/calculator.dart';
import 'package:megaapp/pages/counter.dart';
import 'package:megaapp/widgets/home/button.widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCl>(
      init: HomeCl(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(223, 98, 210, 255),
            title: const Text(
              "MegaApp",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(112, 209, 209, 209),
                        offset: Offset(0.0, -4.0),
                        blurRadius: 8.00),
                  ], color: Color.fromARGB(223, 98, 210, 255)),
                  child: ListView(
                    padding: const EdgeInsets.all(8),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Button(
                          nameButton: "Calculator",
                          operation: controller.show("Calculator")),
                      Button(
                          nameButton: "Counter",
                          operation: controller.show("Counter")),
                      Button(
                          nameButton: "Todo",
                          operation: controller.show("Todo")),
                      Button(
                          nameButton: "Timer",
                          operation: controller.show("Timer")),
                      Button(
                          nameButton: "Settings",
                          operation: controller.show("Settings")),
                      Button(
                          nameButton: "Test",
                          operation: controller.show("Test")),
                    ],
                  )),
              Expanded(child: getCurrentWidget(controller.page))
            ],
          ),
        );
      },
    );
  }

  Widget getCurrentWidget(String page) {
    if (page == "Calculator") {
      return Calculator();
    }
    if (page == "Counter") {
      return Counter();
    }
    if (page == "Todo") {
      return Todo();
    }
    if (page == "Timer") {
      return TimerP();
    }
    if (page == "Test") {
      return Test();
    }
    return SizedBox();
  }
}
