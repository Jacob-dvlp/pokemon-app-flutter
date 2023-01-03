import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './splashscreen_controller.dart';

class SplashscreenPage extends GetView<SplashscreenController> {
    
    const SplashscreenPage({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(title: const Text('SplashscreenPage'),),
            body: Container(),
        );
    }
}