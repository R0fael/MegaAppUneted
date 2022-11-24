import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/home.cl.dart';

class Button2 extends StatelessWidget {
  const Button2({Key? key, required this.nameButton, required this.operation})
      : super(key: key);

  final String nameButton;
  final VoidCallback operation;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCl>(
      init: HomeCl(),
      builder: (controller) {
        return InkWell(
            onTap: () {
              operation();
            },
            child: Row(children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                height: MediaQuery.of(context).size.width * 0.2,
                child: Expanded(
                  child: Center(
                    child: Text(nameButton,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 252, 252),
                            fontSize: 35)),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.00),
                  color: Color.fromARGB(223, 11, 93, 126),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(224, 0, 0, 0),
                        offset: Offset(0, 0),
                        blurRadius: 2.00),
                  ],
                ),
              ),
            ]));
      },
    );
  }
}
