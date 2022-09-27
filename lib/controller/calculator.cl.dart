import 'package:get/get_state_manager/get_state_manager.dart';

class CalculatorCl extends GetxController {
  List<String> write = [];
  String counter = '';
  String temporaryValue = '';

  onEnter(String symbol) {
    counter = counter + symbol;

    if (symbol != "x" &&
        symbol != "%" &&
        symbol != "/" &&
        symbol != "*" &&
        symbol != "-" &&
        symbol != "+") {
      temporaryValue = temporaryValue + symbol;
    }
    addToWrite(symbol);
    update();
    print(write);
  }

  calculate() {
    write.add(temporaryValue);

    for (int i = 0; i < write.length; i++) {
      if (i == 0) {
        counter = write[0];
      } else {
        if (write[i - 1] == "-") {
          double a = double.parse(counter);
          double b = double.parse(write[i]);
          double c = a - b;
          counter = c.toString();
        }
        if (write[i - 1] == "/") {
          double a = double.parse(counter);
          double b = double.parse(write[i]);
          double c = a / b;
          counter = c.toString();
        }
        if (write[i - 1] == "*") {
          double a = double.parse(counter);
          double b = double.parse(write[i]);
          double c = a * b;
          counter = c.toString();
        }
        if (write[i - 1] == "+") {
          double a = double.parse(counter);
          double b = double.parse(write[i]);
          double c = a + b;
          counter = c.toString();
        }
      }
    }
    //temporaryValue = '';
    write = [];

    update();
  }

  addToWrite(String item) {
    if (item == "+") {
      write.add(temporaryValue);
      temporaryValue = '';
      write.add('+');
    }
    if (item == "/") {
      write.add(temporaryValue);
      temporaryValue = '';
      write.add('/');
    }
    if (item == "*") {
      write.add(temporaryValue);
      temporaryValue = '';
      write.add('*');
    }
    if (item == "-") {
      write.add(temporaryValue);
      temporaryValue = '';
      write.add('-');
    }
    if (item == "x") {
      write.add(temporaryValue);
      temporaryValue = '';
      write.add('x');
    }
    if (item == "C") {
      counter = "";
      write = [];
      temporaryValue = "";
    }
    update();
  }
}
