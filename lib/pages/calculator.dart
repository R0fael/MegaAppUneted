import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controller/calculator.cl.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CalculatorCl>(
        init: CalculatorCl(),
        builder: (controller) {
          button(String nameButton) {
            return Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(223, 11, 93, 126),
                  borderRadius: BorderRadius.circular(10.00),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(223, 11, 93, 126),
                        offset: Offset(0, 0),
                        blurRadius: 2.00),
                  ],
                ),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.1,
                child: ElevatedButton(
                  onPressed: () {
                    controller.onEnter(nameButton);
                  },
                  child:
                      Text(nameButton, style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(223, 11, 93, 126),
                  ),
                ));
          }

          bigButton(String nameButton) {
            return Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(223, 11, 93, 126),
                  borderRadius: BorderRadius.circular(10.00),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(223, 11, 93, 126),
                        offset: Offset(0, 0),
                        blurRadius: 2.00),
                  ],
                ),
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.height * 0.2135,
                child: ElevatedButton(
                  onPressed: () {
                    controller.calculate();
                  },
                  child:
                      Text(nameButton, style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(223, 11, 93, 126),
                  ),
                ));
          }

          spase() {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            );
          }

          String counter = controller.counter;
          return (Scaffold(
            backgroundColor: Color.fromARGB(223, 174, 232, 255),
            body: Column(
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  margin: const EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Text(
                    '$counter',
                    style: const TextStyle(fontSize: 72.00),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.00),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 0.0),
                          blurRadius: 4.00),
                    ],
                  ),
                ),
                spase(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button(
                      "x",
                    ),
                    button(
                      "%",
                    ),
                    button(
                      "/",
                    ),
                    button(
                      "*",
                    )
                  ],
                ),
                spase(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button(
                      "7",
                    ),
                    button(
                      "8",
                    ),
                    button(
                      "9",
                    ),
                    button(
                      "-",
                    )
                  ],
                ),
                spase(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    button(
                      "4",
                    ),
                    button(
                      "5",
                    ),
                    button(
                      "6",
                    ),
                    button(
                      "+",
                    )
                  ],
                ),
                spase(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(
                          "1",
                        ),
                        spase(),
                        button(
                          "C",
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(
                          "2",
                        ),
                        spase(),
                        button(
                          "0",
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        button(
                          "3",
                        ),
                        spase(),
                        button(
                          ".",
                        )
                      ],
                    ),
                    bigButton("=")
                  ],
                ),
              ],
            ),
          ));
        });
  }
}
