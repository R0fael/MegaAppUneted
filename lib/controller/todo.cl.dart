import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TodoCl extends GetxController {
  List todoList = ['wake up', 'breakfast'];
  String newTodo = '';
  String newEditTodo = '';

  void onChangeNewTodo(text) {
    newTodo = text;
    update();
  }

  removeToDoByIndex(int index) {
    todoList.removeAt(index);
    update();
  }

  mergeTodo() {
    todoList.add(newTodo);
    update();
  }

  editTodo(String newText) {
    newEditTodo = newText;
    update();
  }

  saveEditTodo(index) {
    todoList[index] = newEditTodo;
    update();
  }
}
