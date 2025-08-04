import 'package:get/get.dart';

import '../../data/database_helper.dart';
import '../../models/todo_model.dart';

class TodoController extends GetxController {
  final DatabaseHelper databaseHelper;
  final todos = <TodoModel>[].obs; // Reactive list of todos

  TodoController(this.databaseHelper);

  @override
  void onInit() {
    super.onInit();
    fetchTodos();
  }

  // Fetch all todos
  Future<void> fetchTodos() async {
    final todoList = await databaseHelper.getAllTodos();
    todos.assignAll(todoList);
  }

  // Add a new todo
  Future<void> addTodo(String title) async {
    final todo = TodoModel(
      title: title,
    );
    await databaseHelper.addTodo(todo);
    await fetchTodos(); // Refresh the list
  }

  // Update a todo
  Future<void> updateTodo(TodoModel todo) async {
    try {
      await databaseHelper.updateTodo(todo);
      await fetchTodos(); // Refresh the list
    } catch (e) {
      Get.snackbar('Error', 'Failed to update todo: $e');
    }
  }

  // Delete a todo
  Future<void> deleteTodo(int id) async {
    try {
      await databaseHelper.deleteTodo(id);
      await fetchTodos(); // Refresh the list
    } catch (e) {
      Get.snackbar('Error', 'Failed to delete todo: $e');
    }
  }
}