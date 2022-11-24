import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/home.cl.dart';

class ButtonT extends StatelessWidget {
  const ButtonT({
    Key? key,
    required this.nameButton,
    required this.operation,
  }) : super(key: key);

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
            child: Center(
                child: Container(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width * 0.60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(223, 11, 93, 126),
                      borderRadius: BorderRadius.circular(17.00),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromARGB(224, 0, 0, 0),
                            offset: Offset(0.0, 0.0),
                            blurRadius: 2.0),
                      ],
                    ),
                    child: Center(
                      child: Text(nameButton,
                          style: const TextStyle(
                              fontSize: 50.00,
                              color: Color.fromARGB(255, 255, 252, 252))),
                    ))),
          );
        });
  }
}
