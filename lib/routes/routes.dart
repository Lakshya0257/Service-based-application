import 'package:get/get.dart';

import '../app/modules/homepage/binding/homepage_binding.dart';
import '../app/modules/homepage/view/homepage.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: Homepage.route,
      page: () => const Homepage(),
      binding: HomepageBinding(),
    ),
  ];
}
