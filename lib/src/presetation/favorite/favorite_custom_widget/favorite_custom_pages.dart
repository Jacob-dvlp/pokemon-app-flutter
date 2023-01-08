import 'package:flutter/material.dart';

import '../../../../widgets/custom_app_bar.dart';

class FavoriteCustomPages extends StatelessWidget {
  const FavoriteCustomPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: const [CustomAppBar(widget: Icon(Icons.menu), isHome: false)],
    ));
  }
}
