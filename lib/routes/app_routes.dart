part of 'app_pages.dart';

abstract class Routes {

  static const Todo_screen = '/home';


  static String LOGIN_THEN(String afterSuccessfulLogin) =>
      '$Todo_screen?then=${Uri.encodeQueryComponent(afterSuccessfulLogin)}';
}
