import '../models/todo_model.dart';
import 'database/database.dart';
class DatabaseHelper {
  final AppDatabase database;

  DatabaseHelper(this.database);

  // Get all todos
  Future<List<TodoModel>> getAllTodos() async {
    final todoData = await database.select(database.todos).get();
    return todoData.map((data) => TodoModel.fromDrift(data)).toList();
  }

  // Add a new todo
  Future<void> addTodo(TodoModel todo) async {
    await database.into(database.todos).insert(todo.toCompanion());
  }

  // Update a todo
  Future<void> updateTodo(TodoModel todo) async {
    await database.update(database.todos).replace(todo.toCompanion());
  }

  // Delete a todo
  Future<void> deleteTodo(int id) async {
    await (database.delete(database.todos)..where((tbl) => tbl.id.equals(id))).go();
  }
}