import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      title: todo == null ? 'Add Task' : 'Edit Task',
      titleStyle: GoogleFonts.alexandria(
        fontWeight: FontWeight.bold,
        color: Colors.deepPurpleAccent,
        fontSize: 30.sp
      ),
      content: SlideInUp(
        duration: const Duration(milliseconds: 300),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.0.h,vertical: 10.0.w),
          child: TextField(
            controller: titleController,
            decoration: InputDecoration(
             // labelText: 'Title',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
              ),
              filled: true,
              fillColor: Colors.grey[100],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      radius: 15.r,
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
              borderRadius: 8.r,
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
          backgroundColor: Colors.deepPurpleAccent,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical:8),
        ),
        child: Text(todo == null ? 'Add' : 'Update'),
      ),
      cancel: ElevatedButton(
        onPressed: () => Get.back(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding:  EdgeInsets.symmetric(horizontal: 18.h, vertical:8.w),
        ),
        child: Text(
          'Cancel',
          style: GoogleFonts.alexandria(color: Colors.white),
        ),
      ),
    );
  }
}
