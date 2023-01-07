import 'package:flutter/material.dart';

import '../../../style/app_style.dart';
import 'custom_widgets_body_home_page/home_body_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String routName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyle.colorBackgorundprimary,
        body: const HomeHeaderWidgetCard());
  }
}
