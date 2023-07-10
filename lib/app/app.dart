import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';
import 'modules/homepage/view/homepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // GetStorage box = GetStorage();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      getPages: AppRoutes.pages,
      // initialRoute: LoginPage.route,
      initialRoute: Homepage.route,
    );
  }
}
