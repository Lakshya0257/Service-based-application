import 'package:get/get.dart';

import '../controller/homepage_controller.dart';

class HomepageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageController());
  }
}
