import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeleton_loader/skeleton_loader.dart';

class CustomWidgetSkeletonBodyAbout extends StatelessWidget {
  const CustomWidgetSkeletonBodyAbout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SkeletonLoader(
          items: 3,
          period: const Duration(seconds: 2),
          highlightColor: Colors.white,
          direction: SkeletonDirection.ltr,
          builder: Container(
            decoration: const BoxDecoration(color: Colors.amber),
            width: Get.width,
            height: 150,
          ),
        ),
        const SkeletonLoader(
          items: 3,
          period: Duration(seconds: 2),
          highlightColor: Colors.white,
          direction: SkeletonDirection.ltr,
          builder: LinearProgressIndicator(
            minHeight: 20,
          ),
        ),
        SkeletonLoader(
          items: 3,
          period: const Duration(seconds: 2),
          highlightColor: Colors.white,
          direction: SkeletonDirection.ltr,
          builder: Container(
            decoration: const BoxDecoration(color: Colors.amber),
            width: Get.width,
            height: 55,
          ),
        ),
      ],
    );
  }
}
