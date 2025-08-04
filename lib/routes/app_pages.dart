import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:todo_drift/pages/todo/presentation/view/screens/todo_screen.dart';
import '../pages/todo/bindings/todo_bindings.dart';
part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
   static const INITIAL = Routes.Todo_screen;

  static final routes = [
    GetPage(
        name: Routes.Todo_screen,
        page: () => const TodoScreen(),
        binding: TodoBinding()
    ),

  ];

}
