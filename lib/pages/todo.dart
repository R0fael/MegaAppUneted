import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../controller/todo.cl.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodoCl>(
        init: TodoCl(),
        builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.grey[980],
            appBar: AppBar(
              title: const Text("Список Дел"),
              centerTitle: true,
            ),
            floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.greenAccent,
              child: const Icon(Icons.add_box),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Добавить заметку"),
                      content: TextField(
                        onChanged: (String text) {
                          controller.onChangeNewTodo(text);
                        },
                      ),
                      actions: [
                        ElevatedButton(
                          onPressed: controller.mergeTodo,
                          child: const Text("Добавить"),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            body: ListView.builder(
              itemCount: controller.todoList.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: Key(
                    index.toString(),
                  ),
                  onDismissed: (direction) {
                    controller.removeToDoByIndex(index);
                  },
                  child: Card(
                    elevation: 2,
                    child: ListTile(
                      title: Text(controller.todoList[index]),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.mode_edit,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: const Text("Изменить заметку"),
                                      content: TextField(
                                        onChanged: (String text) {
                                          controller.editTodo(text);
                                        },
                                      ),
                                      actions: [
                                        ElevatedButton(
                                          onPressed: () {
                                            controller.saveEditTodo(index);
                                            Navigator.pop(context);
                                          },
                                          child: const Text("Изменить"),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete_sweep,
                                  color: Colors.green),
                              onPressed: () =>
                                  controller.removeToDoByIndex(index),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        });
  }
}
