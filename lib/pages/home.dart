import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/home.cl.dart';
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
            title: const Text(
              "MegaApp",
              style: TextStyle(fontSize: 50, fontFamily: 'Afont'),
            ),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Button(
                        nameButton: "Calculator",
                        operation: controller.showCalculator()),
                    Button(
                        nameButton: "Counter",
                        operation: controller.showCounter()),
                    Button(
                        nameButton: "Todo", operation: controller.showTodo()),
                    Button(
                        nameButton: "Timer",
                        operation: controller.showCalculator()),
                  ],
                ),
              ),
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
    return SizedBox();
  }
}
