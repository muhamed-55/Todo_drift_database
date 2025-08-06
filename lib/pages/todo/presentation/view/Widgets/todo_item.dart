import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:todo_drift/pages/todo/presentation/view/Widgets/todo_dialog.dart';

import '../../../models/todo_model.dart';
import '../../controller/todo_controller.dart';


class TodoItem extends GetView<TodoController> {
  final TodoModel todo;
  final int index;

  const TodoItem({super.key, required this.todo, required this.index});

  @override
  Widget build(BuildContext context) {

    return SlideInLeft(
      duration: Duration(milliseconds: 400 + (index * 100)),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                todo.title,
                style: GoogleFonts.alexandria(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SlideInDown(
                  duration: const Duration(milliseconds: 400),
                  child: CircleAvatar(
                    backgroundColor: Colors.deepPurpleAccent,
                    radius: 15,
                    child: IconButton(
                      icon: const Icon(Icons.edit, size: 12, color: Colors.white),
                      onPressed: () => TodoDialog.show(todo: todo),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                SlideInDown(
                  duration: const Duration(milliseconds: 200),
                  child: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                    radius: 15,
                    child: IconButton(
                      icon: const Icon(Icons.delete, size: 12, color: Colors.white),
                      onPressed: () => controller.deleteTodo(todo.id!),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
