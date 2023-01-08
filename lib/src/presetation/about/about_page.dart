import 'package:flutter/material.dart';

import '../../../routes/importes.dart';
import 'about_controller.dart';
import 'about_custom_widget_body_a/about_body_widgets.dart';

class AboutPage extends GetView<AboutController> {
  const AboutPage({Key? key}) : super(key: key);
  static String routName = "/about";
  @override
  Widget build(BuildContext context) {
    return  AboutBodyWidgets();
  }
}
