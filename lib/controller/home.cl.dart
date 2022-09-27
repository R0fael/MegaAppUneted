import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeCl extends GetxController {
  String page = "Calculator";

  showCounter() {
    return (() {
      page = 'Counter';
      update();
    });
  }

  showTodo() {
    return (() {
      page = 'Todo';
      update();
    });
  }

  showCalculator() {
    return (() {
      page = 'Calculator';
      update();
    });
  }
}
