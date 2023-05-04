import 'package:flutter/material.dart';
import 'package:gas/app/homepage/controller/homepage_controller.dart';
import 'package:get/get.dart';

class Homepage extends GetView<HomepageController> {
  static const route='/';
  static launch()=>Get.toNamed(route);
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}