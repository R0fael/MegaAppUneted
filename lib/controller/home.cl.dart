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

  showTimer() {
    return (() {
      page = 'Timer';
      update();
    });
  }

  showShop() {
    return (() {
      page = 'Shop';
      update();
    });
  }

  showSerch() {
    return (() {
      page = 'Serch';
      update();
    });
  }

  showCloud() {
    return (() {
      page = 'Cloud';
      update();
    });
  }

  showSettings() {
    return (() {
      page = 'Settings';
      update();
    });
  }

  showSetuper() {
    return (() {
      page = 'SetUper';
      update();
    });
  }
}
