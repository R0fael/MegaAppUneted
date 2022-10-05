import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/home.cl.dart';

class ButtonT extends StatelessWidget {
  const ButtonT({Key? key, required this.nameButton, required this.operation})
      : super(key: key);

  final String nameButton;
  final VoidCallback operation;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeCl>(
        init: HomeCl(),
        builder: (controller) {
          return InkWell(
            onTap: operation,
            child: Center(
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.13,
                    width: MediaQuery.of(context).size.width * 0.43,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(225, 57, 65, 255),
                      borderRadius: BorderRadius.circular(17.00),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(225, 55, 63, 255),
                            offset: Offset(0.0, 0.0),
                            blurRadius: 37.00),
                      ],
                    ),
                    child: Center(
                      child: Text(nameButton,
                          style: const TextStyle(
                              fontSize: 52.00,
                              color: Color.fromARGB(225, 244, 244, 244))),
                    ))),
          );
        });
  }
}
