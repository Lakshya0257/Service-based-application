import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/services.dart';

import 'app/app.dart';

Future<void> main() async {
  await GetStorage.init();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
