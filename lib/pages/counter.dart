import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/counter.cl.dart';
import 'package:megaapp/widgets/home/button.widget2.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterCl>(
      init: CounterCl(),
      builder: (controller) {
        int counter = controller.counter;
        return Scaffold(
          backgroundColor: Color.fromARGB(223, 174, 232, 255),
          body: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.53,
                height: MediaQuery.of(context).size.width * 0.53,
                child: Center(
                  child: Text(
                    '$counter',
                    style: const TextStyle(
                      fontSize: 50.00,
                      color: Color(0xE036393E),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 252, 252),
                  borderRadius: BorderRadius.circular(1000.00),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(223, 11, 93, 126),
                        offset: Offset(0, 0),
                        blurRadius: 10.00),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Button2(nameButton: "-", operation: controller.minus()),
                  Button2(nameButton: "reset", operation: controller.reset()),
                  Button2(nameButton: "+", operation: controller.plus()),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
