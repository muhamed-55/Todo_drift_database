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
          style: GoogleFonts.aBeeZee(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.teal,
        elevation: 2,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80',
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
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
          backgroundColor: Colors.teal,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
