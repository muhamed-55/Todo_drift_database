import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:todo_drift/pages/todo/data/database/database.dart';
import 'package:todo_drift/pages/todo/data/database_helper.dart';
import 'package:todo_drift/pages/todo/presentation/controller/todo_controller.dart';
import 'package:todo_drift/routes/app_pages.dart';
import 'package:todo_drift/shared/logger/logger_utils.dart';
import 'config/ConfigReader.dart';
import 'lang/translation_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
    ),
  );
  await ConfigReader.initialize();
  Get.lazyPut(() => AppDatabase());
  Get.lazyPut(() => DatabaseHelper(Get.find<AppDatabase>()));
  Get.lazyPut(() => TodoController(Get.find<DatabaseHelper>()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 923),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (BuildContext context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          enableLog: true,
          logWriterCallback: Logger.write,
          getPages: AppPages.routes,
          initialRoute: Routes.Todo_screen,
          supportedLocales: const [Locale('ar'), Locale('en')],
          translations: TranslationService(),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
        );
      },
    );
  }
}