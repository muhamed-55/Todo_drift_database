import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

import '../../../models/todo_model.dart';
import '../../controller/todo_controller.dart';


class TodoDialog {
  static void show({TodoModel? todo}) {
    final controller = Get.find<TodoController>();
    final titleController = TextEditingController(text: todo?.title ?? '');

    Get.defaultDialog(
      title: todo == null ? 'Add To-Do' : 'Edit To-Do',
      titleStyle: GoogleFonts.aBeeZee(
        fontWeight: FontWeight.bold,
        color: Colors.teal,
      ),
      content: SlideInUp(
        duration: const Duration(milliseconds: 300),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: TextField(
            controller: titleController,
            decoration: InputDecoration(
              labelText: 'Title',
              border: const OutlineInputBorder(),
              filled: true,
              fillColor: Colors.grey[100],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      radius: 12,
      textCancel: 'Cancel',
      cancelTextColor: Colors.grey[600],
      textConfirm: todo == null ? 'Add' : 'Update',
      confirm: ElevatedButton(
        onPressed: () {
          if (titleController.text.isNotEmpty) {
            if (todo == null) {
              controller.addTodo(titleController.text);
            } else {
              controller.updateTodo(TodoModel(
                id: todo.id,
                title: titleController.text,
                isCompleted: todo.isCompleted,
              ));
            }
            Get.back();
            Get.snackbar(
              'Success',
              todo == null ? 'To-Do added successfully' : 'To-Do updated successfully',
              backgroundColor: Colors.teal,
              colorText: Colors.white,
              snackPosition: SnackPosition.BOTTOM,
              duration: const Duration(seconds: 2),
              margin: const EdgeInsets.all(16),
              borderRadius: 8,
            );
          } else {
            Get.snackbar(
              'Error',
              'Title cannot be empty',
              backgroundColor: Colors.redAccent,
              colorText: Colors.white,
              snackPosition: SnackPosition.BOTTOM,
              duration: const Duration(seconds: 2),
              margin: const EdgeInsets.all(16),
              borderRadius: 8,
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        ),
        child: Text(todo == null ? 'Add' : 'Update'),
      ),
      cancel: TextButton(
        onPressed: () => Get.back(),
        child: Text(
          'Cancel',
          style: GoogleFonts.aBeeZee(color: Colors.grey[600]),
        ),
      ),
    );
  }
}
