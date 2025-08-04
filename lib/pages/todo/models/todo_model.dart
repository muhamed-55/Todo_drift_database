import 'package:drift/drift.dart';

import '../data/database/database.dart';
class TodoModel {
  final int? id;
  final String title;
  final bool isCompleted;

  TodoModel({
    this.id,
    required this.title,
    this.isCompleted = false,
  });

  // Convert Drift data class to model
  factory TodoModel.fromDrift(Todo data) {
    return TodoModel(
      id: data.id,
      title: data.title,
      isCompleted: data.isCompleted,
    );
  }

  // Convert model to Drift companion
  TodosCompanion toCompanion() {
    return TodosCompanion(
      id: id != null ? Value(id!) : const Value.absent(),
      title: Value(title),
      isCompleted: Value(isCompleted),
    );
  }
}