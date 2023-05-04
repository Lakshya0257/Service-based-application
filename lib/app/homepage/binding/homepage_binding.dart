import 'package:gas/app/homepage/controller/homepage_controller.dart';
import 'package:get/get.dart';

class HomepageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageController());
  }
}
