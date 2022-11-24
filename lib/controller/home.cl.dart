import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeCl extends GetxController {
  String page = "Calculator";
  String style = "Sea";

  show(String name) {
    return (() {
      page = name;
      update();
    });
  }
}
