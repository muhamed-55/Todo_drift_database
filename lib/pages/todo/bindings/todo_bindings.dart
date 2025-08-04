import 'package:get/get.dart';

import '../data/database/database.dart';
import '../data/database_helper.dart';
import '../presentation/controller/todo_controller.dart';

class TodoBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(() => AppDatabase());
    Get.put(() => DatabaseHelper(Get.find<AppDatabase>()));
    Get.put(() => TodoController(Get.find<DatabaseHelper>()));
  }
}