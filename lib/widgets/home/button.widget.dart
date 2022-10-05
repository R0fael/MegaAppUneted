import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/home.cl.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.nameButton, required this.operation})
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
                color: Color.fromARGB(255, 99, 151, 236),
                child: Text(nameButton,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 54, 57, 62), fontSize: 40)),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              )
            ]));
      },
    );
  }
}
