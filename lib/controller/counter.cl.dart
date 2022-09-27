import 'package:get/state_manager.dart';

class CounterCl extends GetxController {
  int counter = 0;

  plus() {
    counter++;
    update();
  }

  reset() {
    counter = 0;
    update();
  }

  minus() {
    counter--;
    update();
  }
}
