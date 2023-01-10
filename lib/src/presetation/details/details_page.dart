import 'package:flutter/material.dart';

import '../../../routes/importes.dart';
import 'details_controller.dart';
import 'details_custom_widget_body_a/details_body_widgets.dart';

class DetailPage extends GetView<DetailController> {
  const DetailPage({Key? key}) : super(key: key);
  static String routName = "/about";
  @override
  Widget build(BuildContext context) {
    return const DetailsBodyWidgets();
  }
}
