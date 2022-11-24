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
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Center(
                  child: Text(nameButton, style: const TextStyle(fontSize: 40)),
                ),
              ),
            ]));
      },
    );
  }
}
