import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:megaapp/controller/cloud.cl.dart';

class Cloud extends StatefulWidget {
  const Cloud({Key? key}) : super(key: key);

  @override
  State<Cloud> createState() => _CloudState();
}

class _CloudState extends State<Cloud> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CloudCl>(
        init: CloudCl(),
        builder: (controller) {
          return Scaffold();
        });
  }
}
