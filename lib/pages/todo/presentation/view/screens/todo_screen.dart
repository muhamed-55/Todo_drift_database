import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';
import '../../controller/todo_controller.dart';
import '../Widgets/todo_dialog.dart';
import '../Widgets/todo_item.dart';

class TodoScreen extends GetView<TodoController> {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'To-Do App',
          style: GoogleFonts.alexandria(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 4,
        shadowColor: Colors.blue[900],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundd.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Obx(
              () => ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: controller.todos.length,
            itemBuilder: (context, index) {
              return TodoItem(todo: controller.todos[index], index: index);
            },
          ),
        ),
      ),
      floatingActionButton: ZoomIn(
        duration: const Duration(milliseconds: 400),
        child: FloatingActionButton(
          onPressed: () => TodoDialog.show(),
          backgroundColor: Colors.deepPurpleAccent,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
