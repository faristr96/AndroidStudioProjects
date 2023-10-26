import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan/app/modules/home/controllers/todos_controller.dart';

class TodosPage extends StatelessWidget {
  final TodosController todosController = Get.put(TodosController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fetch Data Example'),
      ),
      body: Center(
        child: Obx(() {
          if (todosController.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else if (todosController.isError.value) {
            return Center(child: Text("Failed to load data"));
          } else {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: todosController.todos.length,
                    itemBuilder: (context, index) {
                      final todo = todosController.todos[index];
                      return Card(
                        child: ListTile(
                          title: Center(child: Text(todo.title)),
                          subtitle: Center(
                            child: Text(
                              'UserID: ${todo.userId}\nID: ${todo.id}\nCompleted: ${todo.completed}',
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    todosController.fetchTodo();
                  },
                  child: Text("Refresh"),
                ),
              ],
            );
          }
        }),
      ),
    );
  }
}
