import 'package:get/get.dart';

import '../app/homepage/binding/homepage_binding.dart';
import '../app/homepage/view/homepage.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: Homepage.route,
      page: () => const Homepage(),
      binding: HomepageBinding(),
    ),
  ];
}
