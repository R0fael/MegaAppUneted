import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/counter.cl.dart';

class Counter extends StatelessWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterCl>(
      init: CounterCl(),
      builder: (controller) {
        int counter = controller.counter;
        return Scaffold(
          backgroundColor: Colors.orangeAccent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Counter',
                style: TextStyle(fontSize: 50.00, backgroundColor: Colors.blue),
              ),
              const SizedBox(height: 200.00),
              const Text(
                'counter',
                style: TextStyle(fontSize: 72.00, backgroundColor: Colors.blue),
              ),
              const SizedBox(height: 100.00),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: controller.minus(),
                    child: const Text("-"),
                  ),
                  ElevatedButton(
                    onPressed: controller.reset(),
                    child: const Text("clear"),
                  ),
                  ElevatedButton(
                    onPressed: controller.plus(),
                    child: const Text("+"),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
