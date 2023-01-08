import 'package:flutter/material.dart';

import '../utils/image/image_key.dart';

class CustomAppBar extends StatelessWidget {
  final Widget widget;
  final bool isHome;
  final Color? color;
  const CustomAppBar({
    Key? key,
    required this.widget,
    required this.isHome,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 32.99, right: 25),
      child: Container(
        color: isHome ? Colors.transparent : color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget,
            Image.asset(
              ImageKey.logo,
            ),
            Image.asset(
              ImageKey.profileImage,
            )
          ],
        ),
      ),
    );
  }
}
