import 'package:get/state_manager.dart';

class CounterCl extends GetxController {
  int counter = 0;

  plus() {
    return () {
      counter++;
      update();
    };
  }

  reset() {
    return () {
      counter = 0;
      update();
    };
  }

  minus() {
    return () {
      counter--;
      update();
    };
  }
}
