import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'about_controller.dart';
import 'custom_widget_body_about/about_body_widgets.dart';

class AboutPage extends GetView<AboutController> {
  const AboutPage({Key? key}) : super(key: key);
  static String routName = "/about";
  @override
  Widget build(BuildContext context) {
    return const AboutBodyWidgets();
  }
}
